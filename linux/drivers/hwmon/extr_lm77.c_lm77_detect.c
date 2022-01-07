
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_NAME_SIZE ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int lm77_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int i, cur, conf, hyst, crit, min, max;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;
 cur = i2c_smbus_read_word_data(client, 0);
 conf = i2c_smbus_read_byte_data(client, 1);
 hyst = i2c_smbus_read_word_data(client, 2);
 crit = i2c_smbus_read_word_data(client, 3);
 min = i2c_smbus_read_word_data(client, 4);
 max = i2c_smbus_read_word_data(client, 5);
 for (i = 8; i <= 0xff; i += 8) {
  if (i2c_smbus_read_byte_data(client, i + 1) != conf
   || i2c_smbus_read_word_data(client, i + 2) != hyst
   || i2c_smbus_read_word_data(client, i + 3) != crit
   || i2c_smbus_read_word_data(client, i + 4) != min
   || i2c_smbus_read_word_data(client, i + 5) != max)
   return -ENODEV;
 }


 if (((cur & 0x00f0) != 0xf0 && (cur & 0x00f0) != 0x0)
  || ((hyst & 0x00f0) != 0xf0 && (hyst & 0x00f0) != 0x0)
  || ((crit & 0x00f0) != 0xf0 && (crit & 0x00f0) != 0x0)
  || ((min & 0x00f0) != 0xf0 && (min & 0x00f0) != 0x0)
  || ((max & 0x00f0) != 0xf0 && (max & 0x00f0) != 0x0))
  return -ENODEV;


 if (conf & 0xe0)
  return -ENODEV;


 cur = i2c_smbus_read_word_data(client, 0);
 if (i2c_smbus_read_word_data(client, 6) != cur
  || i2c_smbus_read_word_data(client, 7) != cur)
  return -ENODEV;
 hyst = i2c_smbus_read_word_data(client, 2);
 if (i2c_smbus_read_word_data(client, 6) != hyst
  || i2c_smbus_read_word_data(client, 7) != hyst)
  return -ENODEV;
 min = i2c_smbus_read_word_data(client, 4);
 if (i2c_smbus_read_word_data(client, 6) != min
  || i2c_smbus_read_word_data(client, 7) != min)
  return -ENODEV;

 strlcpy(info->type, "lm77", I2C_NAME_SIZE);

 return 0;
}
