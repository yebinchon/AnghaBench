
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau7802_state {int client; } ;


 int NAU7802_PUCTRL_CS_BIT ;
 int NAU7802_REG_PUCTRL ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int nau7802_sync(struct nau7802_state *st)
{
 int ret;

 ret = i2c_smbus_read_byte_data(st->client, NAU7802_REG_PUCTRL);
 if (ret < 0)
  return ret;
 ret = i2c_smbus_write_byte_data(st->client, NAU7802_REG_PUCTRL,
    ret | NAU7802_PUCTRL_CS_BIT);

 return ret;
}
