
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 unsigned int* max30100_led_current_mapping ;

__attribute__((used)) static int max30100_get_current_idx(unsigned int val, int *reg)
{
 int idx;


 if (val == 0) {
  *reg = 0;
  return 0;
 }

 for (idx = 0; idx < ARRAY_SIZE(max30100_led_current_mapping); idx++) {
  if (max30100_led_current_mapping[idx] == val) {
   *reg = idx + 1;
   return 0;
  }
 }

 return -EINVAL;
}
