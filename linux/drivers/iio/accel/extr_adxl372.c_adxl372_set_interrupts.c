
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl372_state {int regmap; } ;


 int ADXL372_INT1_MAP ;
 int ADXL372_INT2_MAP ;
 int regmap_write (int ,int ,unsigned char) ;

__attribute__((used)) static int adxl372_set_interrupts(struct adxl372_state *st,
      unsigned char int1_bitmask,
      unsigned char int2_bitmask)
{
 int ret;

 ret = regmap_write(st->regmap, ADXL372_INT1_MAP, int1_bitmask);
 if (ret < 0)
  return ret;

 return regmap_write(st->regmap, ADXL372_INT2_MAP, int2_bitmask);
}
