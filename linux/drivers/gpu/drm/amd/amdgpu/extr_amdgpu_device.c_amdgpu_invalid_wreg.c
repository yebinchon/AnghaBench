
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int BUG () ;
 int DRM_ERROR (char*,int ,int ) ;

__attribute__((used)) static void amdgpu_invalid_wreg(struct amdgpu_device *adev, uint32_t reg, uint32_t v)
{
 DRM_ERROR("Invalid callback to write register 0x%04X with 0x%08X\n",
    reg, v);
 BUG();
}
