
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
struct regmap {int dummy; } ;


 int * W83773_OFFSET_LSB ;
 int * W83773_OFFSET_MSB ;
 long clamp_val (long,int,int) ;
 int regmap_write (struct regmap*,int ,long) ;

__attribute__((used)) static int set_offset(struct regmap *regmap, int index, long val)
{
 int ret;
 u8 high_byte;
 u8 low_byte;

 val = clamp_val(val, -127825, 127825);

 val /= 125;
 high_byte = val >> 3;
 low_byte = (val & 0x07) << 5;

 ret = regmap_write(regmap, W83773_OFFSET_MSB[index], high_byte);
 if (ret < 0)
  return ret;

 return regmap_write(regmap, W83773_OFFSET_LSB[index], low_byte);
}
