
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int BUG () ;
 int DRM_ERROR (char*,int ,int ) ;

__attribute__((used)) static uint32_t amdgpu_block_invalid_rreg(struct amdgpu_device *adev,
       uint32_t block, uint32_t reg)
{
 DRM_ERROR("Invalid callback to read register 0x%04X in block 0x%04X\n",
    reg, block);
 BUG();
 return 0;
}
