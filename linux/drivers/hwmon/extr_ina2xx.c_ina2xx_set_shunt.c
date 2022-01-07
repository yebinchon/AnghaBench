
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ina2xx_data {long rshunt; int current_lsb_uA; int power_lsb_uW; int config_lock; TYPE_1__* config; } ;
struct TYPE_2__ {long shunt_div; int power_lsb_factor; } ;


 void* DIV_ROUND_CLOSEST (unsigned int,long) ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ina2xx_set_shunt(struct ina2xx_data *data, long val)
{
 unsigned int dividend = DIV_ROUND_CLOSEST(1000000000,
        data->config->shunt_div);
 if (val <= 0 || val > dividend)
  return -EINVAL;

 mutex_lock(&data->config_lock);
 data->rshunt = val;
 data->current_lsb_uA = DIV_ROUND_CLOSEST(dividend, val);
 data->power_lsb_uW = data->config->power_lsb_factor *
        data->current_lsb_uA;
 mutex_unlock(&data->config_lock);

 return 0;
}
