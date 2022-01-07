
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int reg_it; int regmap; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int LTR501_ALS_CONTR ;
 int LTR501_CONTR_ALS_GAIN_MASK ;
 int* int_time_mapping ;
 int regmap_field_write (int ,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int ltr501_set_it_time(struct ltr501_data *data, int it)
{
 int ret, i, index = -1, status;

 for (i = 0; i < ARRAY_SIZE(int_time_mapping); i++) {
  if (int_time_mapping[i] == it) {
   index = i;
   break;
  }
 }

 if (index < 0)
  return -EINVAL;

 ret = regmap_read(data->regmap, LTR501_ALS_CONTR, &status);
 if (ret < 0)
  return ret;

 if (status & LTR501_CONTR_ALS_GAIN_MASK) {




  if (index > 1)
   return -EINVAL;
 } else

  if (index == 1)
   return -EINVAL;

 return regmap_field_write(data->reg_it, index);
}
