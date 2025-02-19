
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44000_data {int regmap; } ;


 unsigned int MAX44000_CFG_RX_ALSPGA_MASK ;
 unsigned int MAX44000_CFG_RX_ALSPGA_SHIFT ;
 int MAX44000_REG_CFG_RX ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max44000_read_alspga(struct max44000_data *data)
{
 unsigned int val;
 int ret;

 ret = regmap_read(data->regmap, MAX44000_REG_CFG_RX, &val);
 if (ret < 0)
  return ret;
 return (val & MAX44000_CFG_RX_ALSPGA_MASK) >> MAX44000_CFG_RX_ALSPGA_SHIFT;
}
