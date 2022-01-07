
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_vmhub {void* vm_l2_pro_fault_cntl; void* vm_l2_pro_fault_status; void* vm_context0_cntl; void* vm_inv_eng0_ack; void* vm_inv_eng0_req; void* ctx0_ptb_addr_hi32; void* ctx0_ptb_addr_lo32; } ;
struct amdgpu_device {struct amdgpu_vmhub* vmhub; } ;


 size_t AMDGPU_MMHUB_0 ;
 int MMHUB ;
 void* SOC15_REG_OFFSET (int ,int ,int ) ;
 int mmVM_CONTEXT0_CNTL ;
 int mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 ;
 int mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 ;
 int mmVM_INVALIDATE_ENG0_ACK ;
 int mmVM_INVALIDATE_ENG0_REQ ;
 int mmVM_L2_PROTECTION_FAULT_CNTL ;
 int mmVM_L2_PROTECTION_FAULT_STATUS ;

void mmhub_v1_0_init(struct amdgpu_device *adev)
{
 struct amdgpu_vmhub *hub = &adev->vmhub[AMDGPU_MMHUB_0];

 hub->ctx0_ptb_addr_lo32 =
  SOC15_REG_OFFSET(MMHUB, 0,
     mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32);
 hub->ctx0_ptb_addr_hi32 =
  SOC15_REG_OFFSET(MMHUB, 0,
     mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32);
 hub->vm_inv_eng0_req =
  SOC15_REG_OFFSET(MMHUB, 0, mmVM_INVALIDATE_ENG0_REQ);
 hub->vm_inv_eng0_ack =
  SOC15_REG_OFFSET(MMHUB, 0, mmVM_INVALIDATE_ENG0_ACK);
 hub->vm_context0_cntl =
  SOC15_REG_OFFSET(MMHUB, 0, mmVM_CONTEXT0_CNTL);
 hub->vm_l2_pro_fault_status =
  SOC15_REG_OFFSET(MMHUB, 0, mmVM_L2_PROTECTION_FAULT_STATUS);
 hub->vm_l2_pro_fault_cntl =
  SOC15_REG_OFFSET(MMHUB, 0, mmVM_L2_PROTECTION_FAULT_CNTL);

}
