
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int RREG32_NO_KIQ (int) ;

bool amdgpu_virt_mmio_blocked(struct amdgpu_device *adev)
{



 return RREG32_NO_KIQ(0xc040) == 0xffffffff;
}
