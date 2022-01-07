
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm90_data {scalar_t__ kind; int temp_hyst; int * temp8; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int LM90_REG_W_TCRIT_HYST ;
 size_t LOCAL_CRIT ;
 scalar_t__ adt7461 ;
 int hyst_to_reg (int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ max6646 ;
 int temp_from_s8 (int ) ;
 int temp_from_u8 (int ) ;
 int temp_from_u8_adt7461 (struct lm90_data*,int ) ;
 scalar_t__ tmp451 ;

__attribute__((used)) static int lm90_set_temphyst(struct lm90_data *data, long val)
{
 struct i2c_client *client = data->client;
 int temp;
 int err;

 if (data->kind == adt7461 || data->kind == tmp451)
  temp = temp_from_u8_adt7461(data, data->temp8[LOCAL_CRIT]);
 else if (data->kind == max6646)
  temp = temp_from_u8(data->temp8[LOCAL_CRIT]);
 else
  temp = temp_from_s8(data->temp8[LOCAL_CRIT]);

 data->temp_hyst = hyst_to_reg(temp - val);
 err = i2c_smbus_write_byte_data(client, LM90_REG_W_TCRIT_HYST,
     data->temp_hyst);
 return err;
}
