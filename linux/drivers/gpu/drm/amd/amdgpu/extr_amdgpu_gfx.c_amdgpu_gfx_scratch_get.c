
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {unsigned int free_mask; int num_reg; scalar_t__ reg_base; } ;
struct TYPE_3__ {TYPE_2__ scratch; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int EINVAL ;
 int ffs (unsigned int) ;

int amdgpu_gfx_scratch_get(struct amdgpu_device *adev, uint32_t *reg)
{
 int i;

 i = ffs(adev->gfx.scratch.free_mask);
 if (i != 0 && i <= adev->gfx.scratch.num_reg) {
  i--;
  adev->gfx.scratch.free_mask &= ~(1u << i);
  *reg = adev->gfx.scratch.reg_base + i;
  return 0;
 }
 return -EINVAL;
}
