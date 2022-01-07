
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jc42_data {int config; int orig_config; } ;
struct i2c_client {int dummy; } ;


 int JC42_CFG_HYST_MASK ;
 int JC42_REG_CONFIG ;
 struct jc42_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int) ;

__attribute__((used)) static int jc42_remove(struct i2c_client *client)
{
 struct jc42_data *data = i2c_get_clientdata(client);


 if ((data->config & ~JC42_CFG_HYST_MASK) !=
     (data->orig_config & ~JC42_CFG_HYST_MASK)) {
  int config;

  config = (data->orig_config & ~JC42_CFG_HYST_MASK)
    | (data->config & JC42_CFG_HYST_MASK);
  i2c_smbus_write_word_swapped(client, JC42_REG_CONFIG, config);
 }
 return 0;
}
