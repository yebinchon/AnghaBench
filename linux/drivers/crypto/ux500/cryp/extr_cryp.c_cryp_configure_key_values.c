
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryp_key_value {int key_value_right; int key_value_left; } ;
struct cryp_device_data {TYPE_1__* base; } ;
typedef enum cryp_key_reg_index { ____Placeholder_cryp_key_reg_index } cryp_key_reg_index ;
struct TYPE_2__ {int key_4_r; int key_4_l; int key_3_r; int key_3_l; int key_2_r; int key_2_l; int key_1_r; int key_1_l; } ;






 int EINVAL ;
 int cpu_relax () ;
 scalar_t__ cryp_is_logic_busy (struct cryp_device_data*) ;
 int writel_relaxed (int ,int *) ;

int cryp_configure_key_values(struct cryp_device_data *device_data,
         enum cryp_key_reg_index key_reg_index,
         struct cryp_key_value key_value)
{
 while (cryp_is_logic_busy(device_data))
  cpu_relax();

 switch (key_reg_index) {
 case 131:
  writel_relaxed(key_value.key_value_left,
    &device_data->base->key_1_l);
  writel_relaxed(key_value.key_value_right,
    &device_data->base->key_1_r);
  break;
 case 130:
  writel_relaxed(key_value.key_value_left,
    &device_data->base->key_2_l);
  writel_relaxed(key_value.key_value_right,
    &device_data->base->key_2_r);
  break;
 case 129:
  writel_relaxed(key_value.key_value_left,
    &device_data->base->key_3_l);
  writel_relaxed(key_value.key_value_right,
    &device_data->base->key_3_r);
  break;
 case 128:
  writel_relaxed(key_value.key_value_left,
    &device_data->base->key_4_l);
  writel_relaxed(key_value.key_value_right,
    &device_data->base->key_4_r);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
