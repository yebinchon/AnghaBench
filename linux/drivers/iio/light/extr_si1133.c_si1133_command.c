
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct si1133_data {int rsp_seq; int mutex; int regmap; int completion; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ETIMEDOUT ;
 int SI1133_CMD_ERR_MASK ;
 int SI1133_CMD_FORCE ;
 int SI1133_CMD_MINSLEEP_US_LOW ;
 int SI1133_CMD_SEQ_MASK ;
 int SI1133_CMD_TIMEOUT_MS ;
 int SI1133_COMPLETION_TIMEOUT_MS ;
 int SI1133_MAX_CMD_CTR ;
 int SI1133_REG_COMMAND ;
 int SI1133_REG_RESPONSE0 ;
 int dev_warn (struct device*,char*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int ,int) ;
 int regmap_write (int ,int ,int ) ;
 int reinit_completion (int *) ;
 int si1133_cmd_reset_counter (struct si1133_data*) ;
 int si1133_parse_response_err (struct device*,int,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int si1133_command(struct si1133_data *data, u8 cmd)
{
 struct device *dev = &data->client->dev;
 u32 resp;
 int err;
 int expected_seq;

 mutex_lock(&data->mutex);

 expected_seq = (data->rsp_seq + 1) & SI1133_MAX_CMD_CTR;

 if (cmd == SI1133_CMD_FORCE)
  reinit_completion(&data->completion);

 err = regmap_write(data->regmap, SI1133_REG_COMMAND, cmd);
 if (err) {
  dev_warn(dev, "Failed to write command %#02hhx, ret=%d\n", cmd,
    err);
  goto out;
 }

 if (cmd == SI1133_CMD_FORCE) {

  if (!wait_for_completion_timeout(&data->completion,
   msecs_to_jiffies(SI1133_COMPLETION_TIMEOUT_MS))) {
   err = -ETIMEDOUT;
   goto out;
  }
  err = regmap_read(data->regmap, SI1133_REG_RESPONSE0, &resp);
  if (err)
   goto out;
 } else {
  err = regmap_read_poll_timeout(data->regmap,
            SI1133_REG_RESPONSE0, resp,
            (resp & SI1133_CMD_SEQ_MASK) ==
            expected_seq ||
            (resp & SI1133_CMD_ERR_MASK),
            SI1133_CMD_MINSLEEP_US_LOW,
            SI1133_CMD_TIMEOUT_MS * 1000);
  if (err) {
   dev_warn(dev,
     "Failed to read command %#02hhx, ret=%d\n",
     cmd, err);
   goto out;
  }
 }

 if (resp & SI1133_CMD_ERR_MASK) {
  err = si1133_parse_response_err(dev, resp, cmd);
  si1133_cmd_reset_counter(data);
 } else {
  data->rsp_seq = expected_seq;
 }

out:
 mutex_unlock(&data->mutex);

 return err;
}
