
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si1133_data {unsigned int rsp_seq; int regmap; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENXIO ;
 int ETIMEDOUT ;
 int SI1133_CMD_MINSLEEP_US_HIGH ;
 int SI1133_CMD_MINSLEEP_US_LOW ;
 int SI1133_CMD_RESET_SW ;
 int SI1133_CMD_TIMEOUT_MS ;
 unsigned int SI1133_MAX_CMD_CTR ;
 int SI1133_REG_COMMAND ;
 int SI1133_REG_RESPONSE0 ;
 int dev_warn (struct device*,char*,unsigned int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int si1133_cmd_reset_sw(struct si1133_data *data)
{
 struct device *dev = &data->client->dev;
 unsigned int resp;
 unsigned long timeout;
 int err;

 err = regmap_write(data->regmap, SI1133_REG_COMMAND,
      SI1133_CMD_RESET_SW);
 if (err)
  return err;

 timeout = jiffies + msecs_to_jiffies(SI1133_CMD_TIMEOUT_MS);
 while (1) {
  err = regmap_read(data->regmap, SI1133_REG_RESPONSE0, &resp);
  if (err == -ENXIO) {
   usleep_range(SI1133_CMD_MINSLEEP_US_LOW,
         SI1133_CMD_MINSLEEP_US_HIGH);
   continue;
  }

  if ((resp & SI1133_MAX_CMD_CTR) == SI1133_MAX_CMD_CTR)
   break;

  if (time_after(jiffies, timeout)) {
   dev_warn(dev, "Timeout on reset ctr resp: %d\n", resp);
   return -ETIMEDOUT;
  }
 }

 if (!err)
  data->rsp_seq = SI1133_MAX_CMD_CTR;

 return err;
}
