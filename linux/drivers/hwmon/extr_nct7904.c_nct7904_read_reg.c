
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct7904_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,unsigned int) ;
 int nct7904_bank_lock (struct nct7904_data*,unsigned int) ;
 int nct7904_bank_release (struct nct7904_data*) ;

__attribute__((used)) static int nct7904_read_reg(struct nct7904_data *data,
       unsigned int bank, unsigned int reg)
{
 struct i2c_client *client = data->client;
 int ret;

 ret = nct7904_bank_lock(data, bank);
 if (ret == 0)
  ret = i2c_smbus_read_byte_data(client, reg);

 nct7904_bank_release(data);
 return ret;
}
