
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm75_data {int current_conf; int client; } ;
typedef int s32 ;


 int LM75_REG_CONF ;
 int LM75_SHUTDOWN ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int lm75_write_config(struct lm75_data *data, u8 set_mask,
        u8 clr_mask)
{
 u8 value;

 clr_mask |= LM75_SHUTDOWN;
 value = data->current_conf & ~clr_mask;
 value |= set_mask;

 if (data->current_conf != value) {
  s32 err;

  err = i2c_smbus_write_byte_data(data->client, LM75_REG_CONF,
      value);
  if (err)
   return err;
  data->current_conf = value;
 }
 return 0;
}
