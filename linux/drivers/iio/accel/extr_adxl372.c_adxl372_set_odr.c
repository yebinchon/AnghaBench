
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl372_state {int odr; int regmap; } ;
typedef enum adxl372_odr { ____Placeholder_adxl372_odr } adxl372_odr ;


 int ADXL372_TIMING ;
 int ADXL372_TIMING_ODR_MODE (int) ;
 int ADXL372_TIMING_ODR_MSK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int adxl372_set_odr(struct adxl372_state *st,
      enum adxl372_odr odr)
{
 int ret;

 ret = regmap_update_bits(st->regmap, ADXL372_TIMING,
     ADXL372_TIMING_ODR_MSK,
     ADXL372_TIMING_ODR_MODE(odr));
 if (ret < 0)
  return ret;

 st->odr = odr;

 return ret;
}
