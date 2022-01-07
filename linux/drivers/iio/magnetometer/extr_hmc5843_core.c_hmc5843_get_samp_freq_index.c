
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hmc5843_data {TYPE_1__* variant; } ;
struct TYPE_2__ {int n_regval_to_samp_freq; int** regval_to_samp_freq; } ;


 int EINVAL ;

__attribute__((used)) static int hmc5843_get_samp_freq_index(struct hmc5843_data *data,
           int val, int val2)
{
 int i;

 for (i = 0; i < data->variant->n_regval_to_samp_freq; i++)
  if (val == data->variant->regval_to_samp_freq[i][0] &&
      val2 == data->variant->regval_to_samp_freq[i][1])
   return i;

 return -EINVAL;
}
