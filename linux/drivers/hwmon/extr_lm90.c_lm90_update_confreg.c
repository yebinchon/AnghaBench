
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lm90_data {scalar_t__ config; int client; } ;


 int LM90_REG_W_CONFIG1 ;
 int i2c_smbus_write_byte_data (int ,int ,scalar_t__) ;

__attribute__((used)) static int lm90_update_confreg(struct lm90_data *data, u8 config)
{
 if (data->config != config) {
  int err;

  err = i2c_smbus_write_byte_data(data->client,
      LM90_REG_W_CONFIG1,
      config);
  if (err)
   return err;
  data->config = config;
 }
 return 0;
}
