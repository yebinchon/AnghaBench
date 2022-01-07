
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GC ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int ) ;
 int mmGDS_GWS_VMID0 ;
 int mmGDS_OA_VMID0 ;
 int mmGDS_VMID0_BASE ;
 int mmGDS_VMID0_SIZE ;

__attribute__((used)) static void gfx_v9_0_init_gds_vmid(struct amdgpu_device *adev)
{
 int vmid;







 for (vmid = 1; vmid < 16; vmid++) {
  WREG32_SOC15_OFFSET(GC, 0, mmGDS_VMID0_BASE, 2 * vmid, 0);
  WREG32_SOC15_OFFSET(GC, 0, mmGDS_VMID0_SIZE, 2 * vmid, 0);
  WREG32_SOC15_OFFSET(GC, 0, mmGDS_GWS_VMID0, vmid, 0);
  WREG32_SOC15_OFFSET(GC, 0, mmGDS_OA_VMID0, vmid, 0);
 }
}
