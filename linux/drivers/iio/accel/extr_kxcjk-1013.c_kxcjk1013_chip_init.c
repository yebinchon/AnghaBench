
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kxcjk1013_data {int odr_bits; int wake_thres; TYPE_1__* client; scalar_t__ active_high_intr; } ;
struct TYPE_3__ {int dev; } ;


 int KXCJK1013_DEFAULT_WAKE_THRES ;
 int KXCJK1013_RANGE_4G ;
 int KXCJK1013_REG_CTRL1 ;
 int KXCJK1013_REG_CTRL1_BIT_RES ;
 int KXCJK1013_REG_DATA_CTRL ;
 int KXCJK1013_REG_INT_CTRL1 ;
 int KXCJK1013_REG_INT_CTRL1_BIT_IEA ;
 int KXCJK1013_REG_WHO_AM_I ;
 int OPERATION ;
 int STANDBY ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 int kxcjk1013_set_mode (struct kxcjk1013_data*,int ) ;
 int kxcjk1013_set_range (struct kxcjk1013_data*,int ) ;

__attribute__((used)) static int kxcjk1013_chip_init(struct kxcjk1013_data *data)
{
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, KXCJK1013_REG_WHO_AM_I);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading who_am_i\n");
  return ret;
 }

 dev_dbg(&data->client->dev, "KXCJK1013 Chip Id %x\n", ret);

 ret = kxcjk1013_set_mode(data, STANDBY);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(data->client, KXCJK1013_REG_CTRL1);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_ctrl1\n");
  return ret;
 }


 ret |= KXCJK1013_REG_CTRL1_BIT_RES;

 ret = i2c_smbus_write_byte_data(data->client, KXCJK1013_REG_CTRL1,
     ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_ctrl\n");
  return ret;
 }


 ret = kxcjk1013_set_range(data, KXCJK1013_RANGE_4G);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(data->client, KXCJK1013_REG_DATA_CTRL);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_data_ctrl\n");
  return ret;
 }

 data->odr_bits = ret;


 ret = i2c_smbus_read_byte_data(data->client, KXCJK1013_REG_INT_CTRL1);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_int_ctrl1\n");
  return ret;
 }

 if (data->active_high_intr)
  ret |= KXCJK1013_REG_INT_CTRL1_BIT_IEA;
 else
  ret &= ~KXCJK1013_REG_INT_CTRL1_BIT_IEA;

 ret = i2c_smbus_write_byte_data(data->client, KXCJK1013_REG_INT_CTRL1,
     ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_int_ctrl1\n");
  return ret;
 }

 ret = kxcjk1013_set_mode(data, OPERATION);
 if (ret < 0)
  return ret;

 data->wake_thres = KXCJK1013_DEFAULT_WAKE_THRES;

 return 0;
}
