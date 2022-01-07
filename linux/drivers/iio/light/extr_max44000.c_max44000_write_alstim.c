
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44000_data {int regmap; } ;


 int MAX44000_CFG_RX_ALSTIM_MASK ;
 int MAX44000_CFG_RX_ALSTIM_SHIFT ;
 int MAX44000_REG_CFG_RX ;
 int regmap_write_bits (int ,int ,int ,int) ;

__attribute__((used)) static int max44000_write_alstim(struct max44000_data *data, int val)
{
 return regmap_write_bits(data->regmap, MAX44000_REG_CFG_RX,
     MAX44000_CFG_RX_ALSTIM_MASK,
     val << MAX44000_CFG_RX_ALSTIM_SHIFT);
}
