
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bma180_data {TYPE_1__* client; scalar_t__ sleep_state; } ;
typedef enum bma180_chan { ____Placeholder_bma180_chan } bma180_chan ;
struct TYPE_3__ {int dev; } ;


 int BMA180_ACC_X_LSB ;
 int BMA180_TEMP ;
 int EBUSY ;

 int dev_err (int *,char*,...) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_read_word_data (TYPE_1__*,int) ;

__attribute__((used)) static int bma180_get_data_reg(struct bma180_data *data, enum bma180_chan chan)
{
 int ret;

 if (data->sleep_state)
  return -EBUSY;

 switch (chan) {
 case 128:
  ret = i2c_smbus_read_byte_data(data->client, BMA180_TEMP);
  if (ret < 0)
   dev_err(&data->client->dev, "failed to read temp register\n");
  break;
 default:
  ret = i2c_smbus_read_word_data(data->client,
   BMA180_ACC_X_LSB + chan * 2);
  if (ret < 0)
   dev_err(&data->client->dev,
    "failed to read accel_%c register\n",
    'x' + chan);
 }

 return ret;
}
