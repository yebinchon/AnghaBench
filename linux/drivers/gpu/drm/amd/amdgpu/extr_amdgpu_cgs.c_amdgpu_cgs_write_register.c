
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cgs_device {int dummy; } ;


 int CGS_FUNC_ADEV ;
 int WREG32 (unsigned int,int ) ;

__attribute__((used)) static void amdgpu_cgs_write_register(struct cgs_device *cgs_device, unsigned offset,
          uint32_t value)
{
 CGS_FUNC_ADEV;
 WREG32(offset, value);
}
