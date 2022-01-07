
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_3__ {unsigned int free_mask; unsigned int reg_base; } ;
struct TYPE_4__ {TYPE_1__ scratch; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;



void amdgpu_gfx_scratch_free(struct amdgpu_device *adev, uint32_t reg)
{
 adev->gfx.scratch.free_mask |= 1u << (reg - adev->gfx.scratch.reg_base);
}
