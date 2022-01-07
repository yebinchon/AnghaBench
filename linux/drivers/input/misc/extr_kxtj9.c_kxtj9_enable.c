
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int g_range; } ;
struct kxtj9_data {TYPE_2__* client; int last_poll_interval; int ctrl_reg1; TYPE_1__ pdata; int int_ctrl; } ;
struct TYPE_5__ {int dev; scalar_t__ irq; } ;


 int CTRL_REG1 ;
 int INT_CTRL1 ;
 int INT_REL ;
 int PC1_ON ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_byte_data (TYPE_2__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_2__*,int ,int ) ;
 int kxtj9_device_power_off (struct kxtj9_data*) ;
 int kxtj9_device_power_on (struct kxtj9_data*) ;
 int kxtj9_update_g_range (struct kxtj9_data*,int ) ;
 int kxtj9_update_odr (struct kxtj9_data*,int ) ;

__attribute__((used)) static int kxtj9_enable(struct kxtj9_data *tj9)
{
 int err;

 err = kxtj9_device_power_on(tj9);
 if (err < 0)
  return err;


 err = i2c_smbus_write_byte_data(tj9->client, CTRL_REG1, 0);
 if (err < 0)
  return err;


 if (tj9->client->irq) {
  err = i2c_smbus_write_byte_data(tj9->client,
      INT_CTRL1, tj9->int_ctrl);
  if (err < 0)
   return err;
 }

 err = kxtj9_update_g_range(tj9, tj9->pdata.g_range);
 if (err < 0)
  return err;


 tj9->ctrl_reg1 |= PC1_ON;
 err = i2c_smbus_write_byte_data(tj9->client, CTRL_REG1, tj9->ctrl_reg1);
 if (err < 0)
  return err;

 err = kxtj9_update_odr(tj9, tj9->last_poll_interval);
 if (err < 0)
  return err;


 if (tj9->client->irq) {
  err = i2c_smbus_read_byte_data(tj9->client, INT_REL);
  if (err < 0) {
   dev_err(&tj9->client->dev,
    "error clearing interrupt: %d\n", err);
   goto fail;
  }
 }

 return 0;

fail:
 kxtj9_device_power_off(tj9);
 return err;
}
