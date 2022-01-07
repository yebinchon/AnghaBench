
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int BUG () ;
 int DRM_ERROR (char*,int ) ;

__attribute__((used)) static uint64_t amdgpu_invalid_rreg64(struct amdgpu_device *adev, uint32_t reg)
{
 DRM_ERROR("Invalid callback to read 64 bit register 0x%04X\n", reg);
 BUG();
 return 0;
}
