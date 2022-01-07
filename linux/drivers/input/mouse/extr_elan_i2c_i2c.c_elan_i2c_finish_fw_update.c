
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;
struct completion {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int ETP_I2C_INF_LENGTH ;
 int ETP_I2C_REPORT_LEN ;
 int ETP_I2C_RESET ;
 int ETP_I2C_STAND_CMD ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,int,int) ;
 int disable_irq (int ) ;
 int elan_i2c_write_cmd (struct i2c_client*,int ,int ) ;
 int enable_irq (int ) ;
 int i2c_master_recv (struct i2c_client*,int *,int) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (struct completion*) ;
 int wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static int elan_i2c_finish_fw_update(struct i2c_client *client,
         struct completion *completion)
{
 struct device *dev = &client->dev;
 int error;
 int len;
 u8 buffer[ETP_I2C_REPORT_LEN];

 len = i2c_master_recv(client, buffer, ETP_I2C_REPORT_LEN);
 if (len != ETP_I2C_REPORT_LEN) {
  error = len < 0 ? len : -EIO;
  dev_warn(dev, "failed to read I2C data after FW WDT reset: %d (%d)\n",
   error, len);
 }

 reinit_completion(completion);
 enable_irq(client->irq);

 error = elan_i2c_write_cmd(client, ETP_I2C_STAND_CMD, ETP_I2C_RESET);
 if (error) {
  dev_err(dev, "device reset failed: %d\n", error);
 } else if (!wait_for_completion_timeout(completion,
      msecs_to_jiffies(300))) {
  dev_err(dev, "timeout waiting for device reset\n");
  error = -ETIMEDOUT;
 }

 disable_irq(client->irq);

 if (error)
  return error;

 len = i2c_master_recv(client, buffer, ETP_I2C_INF_LENGTH);
 if (len != ETP_I2C_INF_LENGTH) {
  error = len < 0 ? len : -EIO;
  dev_err(dev, "failed to read INT signal: %d (%d)\n",
   error, len);
  return error;
 }

 return 0;
}
