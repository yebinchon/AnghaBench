
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int ENABLE_ADVANCED_DRIVER_MODEL ;
 int ENABLE_L1_TLB ;
 int ENABLE_L2_CACHE ;
 int MMHUB ;
 int MMHUB_INSTANCE_REGISTER_OFFSET ;
 int MMHUB_NUM_INSTANCES ;
 int REG_SET_FIELD (int,int ,int ,int ) ;
 int RREG32_SOC15_OFFSET (int ,int ,int ,int) ;
 int VML2PF0_VM_L2_CNTL ;
 int VMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int) ;
 int mmVML2PF0_VM_L2_CNTL ;
 int mmVML2PF0_VM_L2_CNTL3 ;
 int mmVML2VC0_VM_CONTEXT0_CNTL ;
 int mmVMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL ;

void mmhub_v9_4_gart_disable(struct amdgpu_device *adev)
{
 u32 tmp;
 u32 i, j;

 for (j = 0; j < MMHUB_NUM_INSTANCES; j++) {

  for (i = 0; i < 16; i++)
   WREG32_SOC15_OFFSET(MMHUB, 0,
         mmVML2VC0_VM_CONTEXT0_CNTL,
         j * MMHUB_INSTANCE_REGISTER_OFFSET +
         i, 0);


  tmp = RREG32_SOC15_OFFSET(MMHUB, 0,
       mmVMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL,
       j * MMHUB_INSTANCE_REGISTER_OFFSET);
  tmp = REG_SET_FIELD(tmp, VMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL,
        ENABLE_L1_TLB, 0);
  tmp = REG_SET_FIELD(tmp,
        VMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL,
        ENABLE_ADVANCED_DRIVER_MODEL, 0);
  WREG32_SOC15_OFFSET(MMHUB, 0,
        mmVMSHAREDVC0_MC_VM_MX_L1_TLB_CNTL,
        j * MMHUB_INSTANCE_REGISTER_OFFSET, tmp);


  tmp = RREG32_SOC15_OFFSET(MMHUB, 0, mmVML2PF0_VM_L2_CNTL,
       j * MMHUB_INSTANCE_REGISTER_OFFSET);
  tmp = REG_SET_FIELD(tmp, VML2PF0_VM_L2_CNTL,
        ENABLE_L2_CACHE, 0);
  WREG32_SOC15_OFFSET(MMHUB, 0, mmVML2PF0_VM_L2_CNTL,
        j * MMHUB_INSTANCE_REGISTER_OFFSET, tmp);
  WREG32_SOC15_OFFSET(MMHUB, 0, mmVML2PF0_VM_L2_CNTL3,
        j * MMHUB_INSTANCE_REGISTER_OFFSET, 0);
 }
}
