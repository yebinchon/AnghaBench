
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kxcjk1013_data {TYPE_1__* client; } ;
typedef enum kxcjk1013_mode { ____Placeholder_kxcjk1013_mode } kxcjk1013_mode ;
struct TYPE_3__ {int dev; } ;


 int KXCJK1013_REG_CTRL1 ;
 int KXCJK1013_REG_CTRL1_BIT_PC1 ;
 int STANDBY ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;

__attribute__((used)) static int kxcjk1013_set_mode(struct kxcjk1013_data *data,
         enum kxcjk1013_mode mode)
{
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, KXCJK1013_REG_CTRL1);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_ctrl1\n");
  return ret;
 }

 if (mode == STANDBY)
  ret &= ~KXCJK1013_REG_CTRL1_BIT_PC1;
 else
  ret |= KXCJK1013_REG_CTRL1_BIT_PC1;

 ret = i2c_smbus_write_byte_data(data->client,
     KXCJK1013_REG_CTRL1, ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_ctrl1\n");
  return ret;
 }

 return 0;
}
