
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kxcjk1013_data {TYPE_1__* client; } ;
typedef enum kxcjk1013_mode { ____Placeholder_kxcjk1013_mode } kxcjk1013_mode ;
struct TYPE_3__ {int dev; } ;


 int KXCJK1013_REG_CTRL1 ;
 int KXCJK1013_REG_CTRL1_BIT_DRDY ;
 int KXCJK1013_REG_INT_CTRL1 ;
 int KXCJK1013_REG_INT_CTRL1_BIT_IEN ;
 int OPERATION ;
 int STANDBY ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 int kxcjk1013_get_mode (struct kxcjk1013_data*,int*) ;
 int kxcjk1013_set_mode (struct kxcjk1013_data*,int) ;

__attribute__((used)) static int kxcjk1013_setup_new_data_interrupt(struct kxcjk1013_data *data,
           bool status)
{
 int ret;
 enum kxcjk1013_mode store_mode;

 ret = kxcjk1013_get_mode(data, &store_mode);
 if (ret < 0)
  return ret;


 ret = kxcjk1013_set_mode(data, STANDBY);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(data->client, KXCJK1013_REG_INT_CTRL1);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_int_ctrl1\n");
  return ret;
 }

 if (status)
  ret |= KXCJK1013_REG_INT_CTRL1_BIT_IEN;
 else
  ret &= ~KXCJK1013_REG_INT_CTRL1_BIT_IEN;

 ret = i2c_smbus_write_byte_data(data->client, KXCJK1013_REG_INT_CTRL1,
     ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_int_ctrl1\n");
  return ret;
 }

 ret = i2c_smbus_read_byte_data(data->client, KXCJK1013_REG_CTRL1);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_ctrl1\n");
  return ret;
 }

 if (status)
  ret |= KXCJK1013_REG_CTRL1_BIT_DRDY;
 else
  ret &= ~KXCJK1013_REG_CTRL1_BIT_DRDY;

 ret = i2c_smbus_write_byte_data(data->client,
     KXCJK1013_REG_CTRL1, ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_ctrl1\n");
  return ret;
 }

 if (store_mode == OPERATION) {
  ret = kxcjk1013_set_mode(data, OPERATION);
  if (ret < 0)
   return ret;
 }

 return 0;
}
