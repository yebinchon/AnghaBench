
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_device {int srbm_mutex; } ;
struct TYPE_2__ {int oa; int gws; int mem_size; int mem_base; } ;


 int DEFAULT_SH_MEM_BASES ;
 int FIRST_COMPUTE_VMID ;
 int LAST_COMPUTE_VMID ;
 int MTYPE_CC ;
 int SH_MEM_ADDRESS_MODE_HSA64 ;
 int SH_MEM_ALIGNMENT_MODE_UNALIGNED ;
 int SH_MEM_CONFIG__ADDRESS_MODE__SHIFT ;
 int SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT ;
 int SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT ;
 int SH_MEM_CONFIG__PRIVATE_ATC_MASK ;
 int WREG32 (int ,int) ;
 TYPE_1__* amdgpu_gds_reg_offset ;
 int mmSH_MEM_APE1_BASE ;
 int mmSH_MEM_APE1_LIMIT ;
 int mmSH_MEM_BASES ;
 int mmSH_MEM_CONFIG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vi_srbm_select (struct amdgpu_device*,int ,int ,int ,int) ;

__attribute__((used)) static void gfx_v8_0_init_compute_vmid(struct amdgpu_device *adev)
{
 int i;
 uint32_t sh_mem_config;
 uint32_t sh_mem_bases;







 sh_mem_bases = DEFAULT_SH_MEM_BASES | (DEFAULT_SH_MEM_BASES << 16);

 sh_mem_config = SH_MEM_ADDRESS_MODE_HSA64 <<
   SH_MEM_CONFIG__ADDRESS_MODE__SHIFT |
   SH_MEM_ALIGNMENT_MODE_UNALIGNED <<
   SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT |
   MTYPE_CC << SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT |
   SH_MEM_CONFIG__PRIVATE_ATC_MASK;

 mutex_lock(&adev->srbm_mutex);
 for (i = FIRST_COMPUTE_VMID; i < LAST_COMPUTE_VMID; i++) {
  vi_srbm_select(adev, 0, 0, 0, i);

  WREG32(mmSH_MEM_CONFIG, sh_mem_config);
  WREG32(mmSH_MEM_APE1_BASE, 1);
  WREG32(mmSH_MEM_APE1_LIMIT, 0);
  WREG32(mmSH_MEM_BASES, sh_mem_bases);
 }
 vi_srbm_select(adev, 0, 0, 0, 0);
 mutex_unlock(&adev->srbm_mutex);



 for (i = FIRST_COMPUTE_VMID; i < LAST_COMPUTE_VMID; i++) {
  WREG32(amdgpu_gds_reg_offset[i].mem_base, 0);
  WREG32(amdgpu_gds_reg_offset[i].mem_size, 0);
  WREG32(amdgpu_gds_reg_offset[i].gws, 0);
  WREG32(amdgpu_gds_reg_offset[i].oa, 0);
 }
}
