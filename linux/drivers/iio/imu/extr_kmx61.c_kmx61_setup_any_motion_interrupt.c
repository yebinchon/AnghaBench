
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct kmx61_data {TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;


 int KMX61_ACC ;
 int KMX61_ACT_STBY_BIT ;
 int KMX61_ALL_STBY ;
 int KMX61_MAG ;
 int KMX61_REG_CTRL1 ;
 int KMX61_REG_CTRL1_BIT_BTSE ;
 int KMX61_REG_CTRL1_BIT_WUFE ;
 int KMX61_REG_INC1 ;
 int KMX61_REG_INC1_BIT_IEN ;
 int KMX61_REG_INC1_BIT_WUFS ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 int kmx61_chip_update_thresholds (struct kmx61_data*) ;
 int kmx61_get_mode (struct kmx61_data*,int *,int) ;
 int kmx61_set_mode (struct kmx61_data*,int ,int,int) ;

__attribute__((used)) static int kmx61_setup_any_motion_interrupt(struct kmx61_data *data,
         bool status)
{
 u8 mode;
 int ret;

 ret = kmx61_get_mode(data, &mode, KMX61_ACC | KMX61_MAG);
 if (ret < 0)
  return ret;

 ret = kmx61_set_mode(data, KMX61_ALL_STBY, KMX61_ACC | KMX61_MAG, 1);
 if (ret < 0)
  return ret;

 ret = kmx61_chip_update_thresholds(data);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(data->client, KMX61_REG_INC1);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_inc1\n");
  return ret;
 }
 if (status)
  ret |= (KMX61_REG_INC1_BIT_IEN | KMX61_REG_INC1_BIT_WUFS);
 else
  ret &= ~(KMX61_REG_INC1_BIT_IEN | KMX61_REG_INC1_BIT_WUFS);

 ret = i2c_smbus_write_byte_data(data->client, KMX61_REG_INC1, ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_inc1\n");
  return ret;
 }

 ret = i2c_smbus_read_byte_data(data->client, KMX61_REG_CTRL1);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_ctrl1\n");
  return ret;
 }

 if (status)
  ret |= KMX61_REG_CTRL1_BIT_WUFE | KMX61_REG_CTRL1_BIT_BTSE;
 else
  ret &= ~(KMX61_REG_CTRL1_BIT_WUFE | KMX61_REG_CTRL1_BIT_BTSE);

 ret = i2c_smbus_write_byte_data(data->client, KMX61_REG_CTRL1, ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_ctrl1\n");
  return ret;
 }
 mode |= KMX61_ACT_STBY_BIT;
 return kmx61_set_mode(data, mode, KMX61_ACC | KMX61_MAG, 1);
}
