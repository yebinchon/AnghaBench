
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct i2c_board_info {scalar_t__ flags; int type; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int FTS_DEVICE_DETECT_REG_1 ;
 int FTS_DEVICE_DETECT_REG_2 ;
 int FTS_DEVICE_DETECT_REG_3 ;
 int FTS_DEVICE_ID_REG ;
 int FTS_DEVICE_REVISION_REG ;
 int I2C_NAME_SIZE ;
 TYPE_1__* fts_id ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int fts_detect(struct i2c_client *client,
        struct i2c_board_info *info)
{
 int val;


 val = i2c_smbus_read_byte_data(client, FTS_DEVICE_REVISION_REG);
 if (val < 0x2b)
  return -ENODEV;


 val = i2c_smbus_read_byte_data(client, FTS_DEVICE_DETECT_REG_1);
 if (val != 0x17)
  return -ENODEV;

 val = i2c_smbus_read_byte_data(client, FTS_DEVICE_DETECT_REG_2);
 if (val != 0x34)
  return -ENODEV;

 val = i2c_smbus_read_byte_data(client, FTS_DEVICE_DETECT_REG_3);
 if (val != 0x54)
  return -ENODEV;





 val = i2c_smbus_read_byte_data(client, FTS_DEVICE_ID_REG);
 if (val != 0x11)
  return -ENODEV;

 strlcpy(info->type, fts_id[0].name, I2C_NAME_SIZE);
 info->flags = 0;
 return 0;
}
