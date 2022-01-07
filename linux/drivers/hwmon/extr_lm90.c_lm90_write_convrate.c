
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm90_data {int config; int flags; int client; } ;


 int LM90_PAUSE_FOR_CONFIG ;
 int LM90_REG_W_CONVRATE ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int lm90_update_confreg (struct lm90_data*,int) ;

__attribute__((used)) static int lm90_write_convrate(struct lm90_data *data, int val)
{
 u8 config = data->config;
 int err;


 if (data->flags & LM90_PAUSE_FOR_CONFIG) {
  err = lm90_update_confreg(data, config | 0x40);
  if (err < 0)
   return err;
 }


 err = i2c_smbus_write_byte_data(data->client, LM90_REG_W_CONVRATE, val);


 lm90_update_confreg(data, config);

 return err;
}
