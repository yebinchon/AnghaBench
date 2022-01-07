
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int reg_it; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int* int_time_mapping ;
 int regmap_field_read (int ,int*) ;

__attribute__((used)) static int ltr501_read_it_time(struct ltr501_data *data, int *val, int *val2)
{
 int ret, index;

 ret = regmap_field_read(data->reg_it, &index);
 if (ret < 0)
  return ret;


 if (index < 0 || index >= ARRAY_SIZE(int_time_mapping))
  return -EINVAL;

 *val2 = int_time_mapping[index];
 *val = 0;

 return IIO_VAL_INT_PLUS_MICRO;
}
