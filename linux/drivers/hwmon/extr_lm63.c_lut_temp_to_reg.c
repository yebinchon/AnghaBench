
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {scalar_t__ lut_temp_highres; scalar_t__ temp2_offset; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int clamp_val (long,int ,int) ;

__attribute__((used)) static inline int lut_temp_to_reg(struct lm63_data *data, long val)
{
 val -= data->temp2_offset;
 if (data->lut_temp_highres)
  return DIV_ROUND_CLOSEST(clamp_val(val, 0, 127500), 500);
 else
  return DIV_ROUND_CLOSEST(clamp_val(val, 0, 127000), 1000);
}
