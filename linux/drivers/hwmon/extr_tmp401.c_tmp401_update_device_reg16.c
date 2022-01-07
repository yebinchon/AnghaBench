
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tmp401_data {scalar_t__ kind; int** temp; } ;
struct i2c_client {int dummy; } ;


 int ** TMP401_TEMP_MSB_READ ;
 int ** TMP432_TEMP_MSB_READ ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 scalar_t__ tmp411 ;
 scalar_t__ tmp432 ;

__attribute__((used)) static int tmp401_update_device_reg16(struct i2c_client *client,
          struct tmp401_data *data)
{
 int i, j, val;
 int num_regs = data->kind == tmp411 ? 6 : 4;
 int num_sensors = data->kind == tmp432 ? 3 : 2;

 for (i = 0; i < num_sensors; i++) {
  for (j = 0; j < num_regs; j++) {
   u8 regaddr;

   regaddr = data->kind == tmp432 ?
      TMP432_TEMP_MSB_READ[j][i] :
      TMP401_TEMP_MSB_READ[j][i];
   if (j == 3) {
    val = i2c_smbus_read_byte_data(client, regaddr);
   } else {
    val = i2c_smbus_read_word_swapped(client,
          regaddr);
   }
   if (val < 0)
    return val;

   data->temp[j][i] = j == 3 ? val << 8 : val;
  }
 }
 return 0;
}
