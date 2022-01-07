
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl372_state {scalar_t__ odr; unsigned int act_time_ms; int regmap; } ;


 scalar_t__ ADXL372_ODR_6400HZ ;
 int ADXL372_TIME_ACT ;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int adxl372_set_activity_time_ms(struct adxl372_state *st,
     unsigned int act_time_ms)
{
 unsigned int reg_val, scale_factor;
 int ret;





 if (st->odr == ADXL372_ODR_6400HZ)
  scale_factor = 3300;
 else
  scale_factor = 6600;

 reg_val = DIV_ROUND_CLOSEST(act_time_ms * 1000, scale_factor);


 if (reg_val > 0xFF)
  reg_val = 0xFF;

 ret = regmap_write(st->regmap, ADXL372_TIME_ACT, reg_val);
 if (ret < 0)
  return ret;

 st->act_time_ms = act_time_ms;

 return ret;
}
