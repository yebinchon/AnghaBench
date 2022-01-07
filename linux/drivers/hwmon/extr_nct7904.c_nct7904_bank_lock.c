
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct7904_data {unsigned int bank_sel; int client; int bank_lock; } ;


 int BANK_SEL_REG ;
 int i2c_smbus_write_byte_data (int ,int ,unsigned int) ;
 int mutex_lock (int *) ;

__attribute__((used)) static int nct7904_bank_lock(struct nct7904_data *data, unsigned int bank)
{
 int ret;

 mutex_lock(&data->bank_lock);
 if (data->bank_sel == bank)
  return 0;
 ret = i2c_smbus_write_byte_data(data->client, BANK_SEL_REG, bank);
 if (ret == 0)
  data->bank_sel = bank;
 else
  data->bank_sel = -1;
 return ret;
}
