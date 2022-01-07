
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hmc5843_data {TYPE_1__* variant; } ;
struct TYPE_2__ {int n_regval_to_nanoscale; int* regval_to_nanoscale; } ;


 int EINVAL ;

__attribute__((used)) static int hmc5843_get_scale_index(struct hmc5843_data *data, int val, int val2)
{
 int i;

 if (val)
  return -EINVAL;

 for (i = 0; i < data->variant->n_regval_to_nanoscale; i++)
  if (val2 == data->variant->regval_to_nanoscale[i])
   return i;

 return -EINVAL;
}
