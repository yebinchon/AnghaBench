
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl372_state {int act_proc_mode; int regmap; } ;
typedef enum adxl372_act_proc_mode { ____Placeholder_adxl372_act_proc_mode } adxl372_act_proc_mode ;


 int ADXL372_MEASURE ;
 int ADXL372_MEASURE_LINKLOOP_MODE (int) ;
 int ADXL372_MEASURE_LINKLOOP_MSK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int adxl372_set_act_proc_mode(struct adxl372_state *st,
         enum adxl372_act_proc_mode mode)
{
 int ret;

 ret = regmap_update_bits(st->regmap,
     ADXL372_MEASURE,
     ADXL372_MEASURE_LINKLOOP_MSK,
     ADXL372_MEASURE_LINKLOOP_MODE(mode));
 if (ret < 0)
  return ret;

 st->act_proc_mode = mode;

 return ret;
}
