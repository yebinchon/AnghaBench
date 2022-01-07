
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl372_state {int op_mode; int regmap; } ;
typedef enum adxl372_op_mode { ____Placeholder_adxl372_op_mode } adxl372_op_mode ;


 int ADXL372_POWER_CTL ;
 int ADXL372_POWER_CTL_MODE (int) ;
 int ADXL372_POWER_CTL_MODE_MSK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int adxl372_set_op_mode(struct adxl372_state *st,
          enum adxl372_op_mode op_mode)
{
 int ret;

 ret = regmap_update_bits(st->regmap, ADXL372_POWER_CTL,
     ADXL372_POWER_CTL_MODE_MSK,
     ADXL372_POWER_CTL_MODE(op_mode));
 if (ret < 0)
  return ret;

 st->op_mode = op_mode;

 return ret;
}
