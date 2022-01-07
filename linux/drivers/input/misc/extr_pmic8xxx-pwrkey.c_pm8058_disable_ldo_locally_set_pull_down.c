
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct regmap {int dummy; } ;


 int PM8058_REGULATOR_DISABLE ;
 int PM8058_REGULATOR_ENABLE_MASK ;
 int PM8058_REGULATOR_PULL_DOWN_EN ;
 int PM8058_REGULATOR_PULL_DOWN_MASK ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static int pm8058_disable_ldo_locally_set_pull_down(struct regmap *regmap,
  u16 ctrl_addr, u16 master_enable_addr, u8 master_enable_bit)
{
 int error;


 error = regmap_update_bits(regmap, master_enable_addr,
   master_enable_bit, master_enable_bit);
 if (error)
  return error;


 return regmap_update_bits(regmap, ctrl_addr,
  PM8058_REGULATOR_ENABLE_MASK | PM8058_REGULATOR_PULL_DOWN_MASK,
  PM8058_REGULATOR_DISABLE | PM8058_REGULATOR_PULL_DOWN_EN);
}
