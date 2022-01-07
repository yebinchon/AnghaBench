
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryp_init_vector_value {int init_value_right; int init_value_left; } ;
struct cryp_device_data {TYPE_1__* base; } ;
typedef enum cryp_init_vector_index { ____Placeholder_cryp_init_vector_index } cryp_init_vector_index ;
struct TYPE_2__ {int init_vect_1_r; int init_vect_1_l; int init_vect_0_r; int init_vect_0_l; } ;




 int EINVAL ;
 int cpu_relax () ;
 scalar_t__ cryp_is_logic_busy (struct cryp_device_data*) ;
 int writel_relaxed (int ,int *) ;

int cryp_configure_init_vector(struct cryp_device_data *device_data,
          enum cryp_init_vector_index
          init_vector_index,
          struct cryp_init_vector_value
          init_vector_value)
{
 while (cryp_is_logic_busy(device_data))
  cpu_relax();

 switch (init_vector_index) {
 case 129:
  writel_relaxed(init_vector_value.init_value_left,
         &device_data->base->init_vect_0_l);
  writel_relaxed(init_vector_value.init_value_right,
         &device_data->base->init_vect_0_r);
  break;
 case 128:
  writel_relaxed(init_vector_value.init_value_left,
         &device_data->base->init_vect_1_l);
  writel_relaxed(init_vector_value.init_value_right,
         &device_data->base->init_vect_1_r);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
