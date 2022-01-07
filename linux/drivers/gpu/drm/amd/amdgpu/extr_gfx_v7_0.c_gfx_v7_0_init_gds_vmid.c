
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int oa; int gws; int mem_size; int mem_base; } ;


 int WREG32 (int ,int ) ;
 TYPE_1__* amdgpu_gds_reg_offset ;

__attribute__((used)) static void gfx_v7_0_init_gds_vmid(struct amdgpu_device *adev)
{
 int vmid;







 for (vmid = 1; vmid < 16; vmid++) {
  WREG32(amdgpu_gds_reg_offset[vmid].mem_base, 0);
  WREG32(amdgpu_gds_reg_offset[vmid].mem_size, 0);
  WREG32(amdgpu_gds_reg_offset[vmid].gws, 0);
  WREG32(amdgpu_gds_reg_offset[vmid].oa, 0);
 }
}
