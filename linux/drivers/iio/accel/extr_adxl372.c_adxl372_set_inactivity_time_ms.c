
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl372_state {scalar_t__ odr; unsigned int inact_time_ms; int regmap; } ;


 scalar_t__ ADXL372_ODR_6400HZ ;
 int ADXL372_TIME_INACT_H ;
 int ADXL372_TIME_INACT_L ;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int adxl372_set_inactivity_time_ms(struct adxl372_state *st,
       unsigned int inact_time_ms)
{
 unsigned int reg_val_h, reg_val_l, res, scale_factor;
 int ret;





 if (st->odr == ADXL372_ODR_6400HZ)
  scale_factor = 13;
 else
  scale_factor = 26;

 res = DIV_ROUND_CLOSEST(inact_time_ms, scale_factor);
 reg_val_h = (res >> 8) & 0xFF;
 reg_val_l = res & 0xFF;

 ret = regmap_write(st->regmap, ADXL372_TIME_INACT_H, reg_val_h);
 if (ret < 0)
  return ret;

 ret = regmap_write(st->regmap, ADXL372_TIME_INACT_L, reg_val_l);
 if (ret < 0)
  return ret;

 st->inact_time_ms = inact_time_ms;

 return ret;
}
