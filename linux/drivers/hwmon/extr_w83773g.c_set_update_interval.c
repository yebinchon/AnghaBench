
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int W83773_CONVERSION_RATE_REG_WRITE ;
 int __fls (long) ;
 int clamp_val (long,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int set_update_interval(struct regmap *regmap, long val)
{
 int rate;
 val = clamp_val(val, 62, 16000) * 10;
 rate = 8 - __fls((val * 8 / (625 * 7)));
 return regmap_write(regmap, W83773_CONVERSION_RATE_REG_WRITE, rate);
}
