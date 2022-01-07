
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cgs_device {int dummy; } ;


 int CGS_FUNC_ADEV ;
 int RREG32 (unsigned int) ;

__attribute__((used)) static uint32_t amdgpu_cgs_read_register(struct cgs_device *cgs_device, unsigned offset)
{
 CGS_FUNC_ADEV;
 return RREG32(offset);
}
