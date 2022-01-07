
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adf_hw_device_data {int ae_mask; } ;


 int ADF_C62X_MAX_ACCELENGINES ;

__attribute__((used)) static u32 get_num_aes(struct adf_hw_device_data *self)
{
 u32 i, ctr = 0;

 if (!self || !self->ae_mask)
  return 0;

 for (i = 0; i < ADF_C62X_MAX_ACCELENGINES; i++) {
  if (self->ae_mask & (1 << i))
   ctr++;
 }
 return ctr;
}
