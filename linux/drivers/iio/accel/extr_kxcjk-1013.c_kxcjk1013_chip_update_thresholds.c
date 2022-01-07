
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kxcjk1013_data {scalar_t__ chipset; TYPE_1__* client; int wake_thres; int wake_dur; } ;
struct TYPE_2__ {int dev; } ;


 int KXCJK1013_REG_WAKE_THRES ;
 int KXCJK1013_REG_WAKE_TIMER ;
 scalar_t__ KXTF9 ;
 int KXTF9_REG_WAKE_THRESH ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int,int ) ;

__attribute__((used)) static int kxcjk1013_chip_update_thresholds(struct kxcjk1013_data *data)
{
 int waketh_reg, ret;

 ret = i2c_smbus_write_byte_data(data->client,
     KXCJK1013_REG_WAKE_TIMER,
     data->wake_dur);
 if (ret < 0) {
  dev_err(&data->client->dev,
   "Error writing reg_wake_timer\n");
  return ret;
 }

 waketh_reg = data->chipset == KXTF9 ?
  KXTF9_REG_WAKE_THRESH : KXCJK1013_REG_WAKE_THRES;
 ret = i2c_smbus_write_byte_data(data->client, waketh_reg,
     data->wake_thres);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_wake_thres\n");
  return ret;
 }

 return 0;
}
