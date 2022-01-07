
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dev; } ;


 int MEMORY_CLIENT_ID ;
 int MEMORY_CLIENT_RW ;
 int PROTECTIONS ;
 int REG_GET_FIELD (int,int ,int ) ;
 int VMID ;
 int VM_CONTEXT1_PROTECTION_FAULT_STATUS ;
 int dev_err (int ,char*,int,int,unsigned int,int,char*,char*,int,int) ;

__attribute__((used)) static void gmc_v7_0_vm_decode_fault(struct amdgpu_device *adev, u32 status,
         u32 addr, u32 mc_client, unsigned pasid)
{
 u32 vmid = REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS, VMID);
 u32 protections = REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
     PROTECTIONS);
 char block[5] = { mc_client >> 24, (mc_client >> 16) & 0xff,
  (mc_client >> 8) & 0xff, mc_client & 0xff, 0 };
 u32 mc_id;

 mc_id = REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
         MEMORY_CLIENT_ID);

 dev_err(adev->dev, "VM fault (0x%02x, vmid %d, pasid %d) at page %u, %s from '%s' (0x%08x) (%d)\n",
        protections, vmid, pasid, addr,
        REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
        MEMORY_CLIENT_RW) ?
        "write" : "read", block, mc_client, mc_id);
}
