
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_physical_nodes; int physical_node_id; int node_segment_size; } ;
struct TYPE_4__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {TYPE_2__ gmc; } ;


 int EINVAL ;
 int GC ;
 int MC_VM_XGMI_LFB_CNTL ;
 int MC_VM_XGMI_LFB_SIZE ;
 int PF_LFB_REGION ;
 int PF_LFB_SIZE ;
 int PF_MAX_REGION ;
 int REG_GET_FIELD (int,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmMC_VM_XGMI_LFB_CNTL ;
 int mmMC_VM_XGMI_LFB_SIZE ;

int gfxhub_v1_1_get_xgmi_info(struct amdgpu_device *adev)
{
 u32 xgmi_lfb_cntl = RREG32_SOC15(GC, 0, mmMC_VM_XGMI_LFB_CNTL);
 u32 max_region =
  REG_GET_FIELD(xgmi_lfb_cntl, MC_VM_XGMI_LFB_CNTL, PF_MAX_REGION);


 if (max_region) {
  adev->gmc.xgmi.num_physical_nodes = max_region + 1;
  if (adev->gmc.xgmi.num_physical_nodes > 4)
   return -EINVAL;

  adev->gmc.xgmi.physical_node_id =
   REG_GET_FIELD(xgmi_lfb_cntl, MC_VM_XGMI_LFB_CNTL, PF_LFB_REGION);
  if (adev->gmc.xgmi.physical_node_id > 3)
   return -EINVAL;
  adev->gmc.xgmi.node_segment_size = REG_GET_FIELD(
   RREG32_SOC15(GC, 0, mmMC_VM_XGMI_LFB_SIZE),
   MC_VM_XGMI_LFB_SIZE, PF_LFB_SIZE) << 24;
 }

 return 0;
}
