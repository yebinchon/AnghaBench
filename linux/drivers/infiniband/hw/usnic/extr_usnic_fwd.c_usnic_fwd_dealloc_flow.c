
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct usnic_fwd_flow {int flow_id; int vnic_idx; TYPE_1__* ufdev; } ;
struct TYPE_2__ {int name; } ;


 int CMD_DEL_FILTER ;
 int ERR_EINVAL ;
 int kfree (struct usnic_fwd_flow*) ;
 int usnic_dbg (char*,int ,int ,int ,...) ;
 int usnic_err (char*,int ,int ,int ,int) ;
 int usnic_fwd_devcmd (TYPE_1__*,int ,int ,int *,int *) ;

int usnic_fwd_dealloc_flow(struct usnic_fwd_flow *flow)
{
 int status;
 u64 a0, a1;

 a0 = flow->flow_id;

 status = usnic_fwd_devcmd(flow->ufdev, flow->vnic_idx,
     CMD_DEL_FILTER, &a0, &a1);
 if (status) {
  if (status == ERR_EINVAL) {
   usnic_dbg("Filter %u already deleted for VF Idx %u pf: %s status: %d",
     flow->flow_id, flow->vnic_idx,
     flow->ufdev->name, status);
  } else {
   usnic_err("PF %s VF Idx %u Filter: %u FILTER DELETE failed with status %d",
     flow->ufdev->name, flow->vnic_idx,
     flow->flow_id, status);
  }
  status = 0;





 } else {
  usnic_dbg("PF %s VF Idx %u Filter: %u FILTER DELETED",
    flow->ufdev->name, flow->vnic_idx,
    flow->flow_id);
 }

 kfree(flow);
 return status;
}
