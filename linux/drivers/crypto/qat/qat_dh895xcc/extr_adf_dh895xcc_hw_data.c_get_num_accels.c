
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adf_hw_device_data {int accel_mask; } ;


 int ADF_DH895XCC_MAX_ACCELERATORS ;

__attribute__((used)) static uint32_t get_num_accels(struct adf_hw_device_data *self)
{
 uint32_t i, ctr = 0;

 if (!self || !self->accel_mask)
  return 0;

 for (i = 0; i < ADF_DH895XCC_MAX_ACCELERATORS; i++) {
  if (self->accel_mask & (1 << i))
   ctr++;
 }
 return ctr;
}
