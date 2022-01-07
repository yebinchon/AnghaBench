
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct7802_data {int regmap; } ;


 int REG_MODE ;
 int REG_START ;
 int REG_VMON_ENABLE ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int nct7802_init_chip(struct nct7802_data *data)
{
 int err;


 err = regmap_update_bits(data->regmap, REG_START, 0x01, 0x01);
 if (err)
  return err;


 err = regmap_update_bits(data->regmap, REG_MODE, 0x40, 0x40);
 if (err)
  return err;


 return regmap_update_bits(data->regmap, REG_VMON_ENABLE, 0x03, 0x03);
}
