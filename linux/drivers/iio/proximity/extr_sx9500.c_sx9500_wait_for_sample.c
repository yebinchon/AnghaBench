
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int regmap; } ;


 int SX9500_REG_PROX_CTRL0 ;
 unsigned int SX9500_SCAN_PERIOD_MASK ;
 unsigned int SX9500_SCAN_PERIOD_SHIFT ;
 int msleep (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int * sx9500_scan_period_table ;

__attribute__((used)) static int sx9500_wait_for_sample(struct sx9500_data *data)
{
 int ret;
 unsigned int val;

 ret = regmap_read(data->regmap, SX9500_REG_PROX_CTRL0, &val);
 if (ret < 0)
  return ret;

 val = (val & SX9500_SCAN_PERIOD_MASK) >> SX9500_SCAN_PERIOD_SHIFT;

 msleep(sx9500_scan_period_table[val]);

 return 0;
}
