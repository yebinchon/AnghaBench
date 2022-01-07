
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;


 int CLEAR_PROTECTION_FAULT_STATUS_ADDR ;
 int FLUSH_TYPE ;
 int INVALIDATE_L1_PTES ;
 int INVALIDATE_L2_PDE0 ;
 int INVALIDATE_L2_PDE1 ;
 int INVALIDATE_L2_PDE2 ;
 int INVALIDATE_L2_PTES ;
 int PER_VMID_INVALIDATE_REQ ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int VM_INVALIDATE_ENG0_REQ ;

__attribute__((used)) static uint32_t gmc_v9_0_get_invalidate_req(unsigned int vmid,
     uint32_t flush_type)
{
 u32 req = 0;

 req = REG_SET_FIELD(req, VM_INVALIDATE_ENG0_REQ,
       PER_VMID_INVALIDATE_REQ, 1 << vmid);
 req = REG_SET_FIELD(req, VM_INVALIDATE_ENG0_REQ, FLUSH_TYPE, flush_type);
 req = REG_SET_FIELD(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L2_PTES, 1);
 req = REG_SET_FIELD(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L2_PDE0, 1);
 req = REG_SET_FIELD(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L2_PDE1, 1);
 req = REG_SET_FIELD(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L2_PDE2, 1);
 req = REG_SET_FIELD(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L1_PTES, 1);
 req = REG_SET_FIELD(req, VM_INVALIDATE_ENG0_REQ,
       CLEAR_PROTECTION_FAULT_STATUS_ADDR, 0);

 return req;
}
