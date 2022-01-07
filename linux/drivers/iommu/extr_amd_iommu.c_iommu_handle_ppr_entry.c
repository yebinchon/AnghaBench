
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amd_iommu_fault {int flags; int tag; int device_id; int pasid; int address; } ;
struct amd_iommu {int dummy; } ;


 int PPR_DEVID (int ) ;
 int PPR_FLAGS (int ) ;
 int PPR_PASID (int ) ;
 scalar_t__ PPR_REQ_FAULT ;
 scalar_t__ PPR_REQ_TYPE (int ) ;
 int PPR_TAG (int ) ;
 int atomic_notifier_call_chain (int *,int ,struct amd_iommu_fault*) ;
 int ppr_notifier ;
 int pr_err_ratelimited (char*) ;

__attribute__((used)) static void iommu_handle_ppr_entry(struct amd_iommu *iommu, u64 *raw)
{
 struct amd_iommu_fault fault;

 if (PPR_REQ_TYPE(raw[0]) != PPR_REQ_FAULT) {
  pr_err_ratelimited("Unknown PPR request received\n");
  return;
 }

 fault.address = raw[1];
 fault.pasid = PPR_PASID(raw[0]);
 fault.device_id = PPR_DEVID(raw[0]);
 fault.tag = PPR_TAG(raw[0]);
 fault.flags = PPR_FLAGS(raw[0]);

 atomic_notifier_call_chain(&ppr_notifier, 0, &fault);
}
