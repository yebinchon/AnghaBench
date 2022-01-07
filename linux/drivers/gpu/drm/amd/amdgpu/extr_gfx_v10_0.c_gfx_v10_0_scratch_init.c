
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_reg; unsigned int free_mask; int reg_base; } ;
struct TYPE_4__ {TYPE_1__ scratch; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int GC ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int mmSCRATCH_REG0 ;

__attribute__((used)) static void gfx_v10_0_scratch_init(struct amdgpu_device *adev)
{
 adev->gfx.scratch.num_reg = 8;
 adev->gfx.scratch.reg_base = SOC15_REG_OFFSET(GC, 0, mmSCRATCH_REG0);
 adev->gfx.scratch.free_mask = (1u << adev->gfx.scratch.num_reg) - 1;
}
