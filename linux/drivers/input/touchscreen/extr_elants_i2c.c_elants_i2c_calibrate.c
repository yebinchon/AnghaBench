
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w_flashkey ;
typedef int u8 ;
struct i2c_client {int dev; int irq; } ;
struct elants_data {int cmd_resp; int state; int cmd_done; struct i2c_client* client; } ;
typedef int rek_resp ;
typedef int rek ;



 int EINVAL ;
 int ELAN_CALI_TIMEOUT_MSEC ;
 int ELAN_STATE_NORMAL ;
 int ELAN_WAIT_RECALIBRATION ;
 int ETIMEDOUT ;
 int dev_err (int *,char*,int,...) ;
 int disable_irq (int ) ;
 int elants_i2c_send (struct i2c_client*,int const*,int) ;
 int enable_irq (int ) ;
 scalar_t__ memcmp (int const*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int elants_i2c_calibrate(struct elants_data *ts)
{
 struct i2c_client *client = ts->client;
 int ret, error;
 static const u8 w_flashkey[] = { 0x54, 0xC0, 0xE1, 0x5A };
 static const u8 rek[] = { 0x54, 0x29, 0x00, 0x01 };
 static const u8 rek_resp[] = { 128, 0x66, 0x66, 0x66 };

 disable_irq(client->irq);

 ts->state = ELAN_WAIT_RECALIBRATION;
 reinit_completion(&ts->cmd_done);

 elants_i2c_send(client, w_flashkey, sizeof(w_flashkey));
 elants_i2c_send(client, rek, sizeof(rek));

 enable_irq(client->irq);

 ret = wait_for_completion_interruptible_timeout(&ts->cmd_done,
    msecs_to_jiffies(ELAN_CALI_TIMEOUT_MSEC));

 ts->state = ELAN_STATE_NORMAL;

 if (ret <= 0) {
  error = ret < 0 ? ret : -ETIMEDOUT;
  dev_err(&client->dev,
   "error while waiting for calibration to complete: %d\n",
   error);
  return error;
 }

 if (memcmp(rek_resp, ts->cmd_resp, sizeof(rek_resp))) {
  dev_err(&client->dev,
   "unexpected calibration response: %*ph\n",
   (int)sizeof(ts->cmd_resp), ts->cmd_resp);
  return -EINVAL;
 }

 return 0;
}
