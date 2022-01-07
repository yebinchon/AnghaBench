
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl372_state {int bw; int regmap; } ;
typedef enum adxl372_bandwidth { ____Placeholder_adxl372_bandwidth } adxl372_bandwidth ;


 int ADXL372_MEASURE ;
 int ADXL372_MEASURE_BANDWIDTH_MODE (int) ;
 int ADXL372_MEASURE_BANDWIDTH_MSK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int adxl372_set_bandwidth(struct adxl372_state *st,
     enum adxl372_bandwidth bw)
{
 int ret;

 ret = regmap_update_bits(st->regmap, ADXL372_MEASURE,
     ADXL372_MEASURE_BANDWIDTH_MSK,
     ADXL372_MEASURE_BANDWIDTH_MODE(bw));
 if (ret < 0)
  return ret;

 st->bw = bw;

 return ret;
}
