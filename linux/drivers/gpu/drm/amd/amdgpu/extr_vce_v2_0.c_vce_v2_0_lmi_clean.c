
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int ETIMEDOUT ;
 int RREG32 (int ) ;
 int mdelay (int) ;
 int mmVCE_LMI_STATUS ;

__attribute__((used)) static int vce_v2_0_lmi_clean(struct amdgpu_device *adev)
{
 int i, j;

 for (i = 0; i < 10; ++i) {
  for (j = 0; j < 100; ++j) {
   uint32_t status = RREG32(mmVCE_LMI_STATUS);

   if (status & 0x337f)
    return 0;
   mdelay(10);
  }
 }

 return -ETIMEDOUT;
}
