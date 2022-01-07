
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rdma_ah_attr {int dummy; } ;
struct TYPE_6__ {int interface_id; int subnet_prefix; } ;
struct TYPE_7__ {TYPE_2__ global; } ;
struct ib_global_route {int hop_limit; TYPE_3__ dgid; scalar_t__ sgid_index; } ;
struct TYPE_5__ {int gid_prefix; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;
struct TYPE_8__ {int port; } ;


 int IB_AH_GRH ;
 int IB_MULTICAST_LID_BASE ;
 int OPA_MAKE_ID (scalar_t__) ;
 scalar_t__ be16_to_cpu (int ) ;
 TYPE_4__* ppd_from_ibp (struct hfi1_ibport*) ;
 struct ib_global_route* rdma_ah_retrieve_grh (struct rdma_ah_attr*) ;
 int rdma_ah_set_ah_flags (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,scalar_t__) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,int ) ;

__attribute__((used)) static void hfi1_update_sm_ah_attr(struct hfi1_ibport *ibp,
       struct rdma_ah_attr *attr, u32 dlid)
{
 rdma_ah_set_dlid(attr, dlid);
 rdma_ah_set_port_num(attr, ppd_from_ibp(ibp)->port);
 if (dlid >= be16_to_cpu(IB_MULTICAST_LID_BASE)) {
  struct ib_global_route *grh = rdma_ah_retrieve_grh(attr);

  rdma_ah_set_ah_flags(attr, IB_AH_GRH);
  grh->sgid_index = 0;
  grh->hop_limit = 1;
  grh->dgid.global.subnet_prefix =
   ibp->rvp.gid_prefix;
  grh->dgid.global.interface_id = OPA_MAKE_ID(dlid);
 }
}
