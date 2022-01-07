
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int srbm_mutex; } ;


 int DEFAULT_SH_MEM_BASES ;
 int DEFAULT_SH_MEM_CONFIG ;
 int FIRST_COMPUTE_VMID ;
 int GC ;
 int LAST_COMPUTE_VMID ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int ) ;
 int mmGDS_GWS_VMID0 ;
 int mmGDS_OA_VMID0 ;
 int mmGDS_VMID0_BASE ;
 int mmGDS_VMID0_SIZE ;
 int mmSH_MEM_BASES ;
 int mmSH_MEM_CONFIG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nv_grbm_select (struct amdgpu_device*,int ,int ,int ,int) ;

__attribute__((used)) static void gfx_v10_0_init_compute_vmid(struct amdgpu_device *adev)
{
 int i;
 uint32_t sh_mem_bases;







 sh_mem_bases = DEFAULT_SH_MEM_BASES | (DEFAULT_SH_MEM_BASES << 16);

 mutex_lock(&adev->srbm_mutex);
 for (i = FIRST_COMPUTE_VMID; i < LAST_COMPUTE_VMID; i++) {
  nv_grbm_select(adev, 0, 0, 0, i);

  WREG32_SOC15(GC, 0, mmSH_MEM_CONFIG, DEFAULT_SH_MEM_CONFIG);
  WREG32_SOC15(GC, 0, mmSH_MEM_BASES, sh_mem_bases);
 }
 nv_grbm_select(adev, 0, 0, 0, 0);
 mutex_unlock(&adev->srbm_mutex);



 for (i = FIRST_COMPUTE_VMID; i < LAST_COMPUTE_VMID; i++) {
  WREG32_SOC15_OFFSET(GC, 0, mmGDS_VMID0_BASE, 2 * i, 0);
  WREG32_SOC15_OFFSET(GC, 0, mmGDS_VMID0_SIZE, 2 * i, 0);
  WREG32_SOC15_OFFSET(GC, 0, mmGDS_GWS_VMID0, i, 0);
  WREG32_SOC15_OFFSET(GC, 0, mmGDS_OA_VMID0, i, 0);
 }
}
