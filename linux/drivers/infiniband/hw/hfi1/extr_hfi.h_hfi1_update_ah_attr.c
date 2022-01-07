
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rdma_ah_attr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {scalar_t__ lid; } ;
struct TYPE_2__ {int gid_prefix; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;


 int IB_AH_GRH ;
 int IB_LID_PERMISSIVE ;
 int IB_MULTICAST_LID_BASE ;
 int OPA_LID_PERMISSIVE ;
 int OPA_MAKE_ID (scalar_t__) ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 int rdma_ah_get_ah_flags (struct rdma_ah_attr*) ;
 scalar_t__ rdma_ah_get_dlid (struct rdma_ah_attr*) ;
 scalar_t__ rdma_ah_get_make_grd (struct rdma_ah_attr*) ;
 int rdma_ah_get_port_num (struct rdma_ah_attr*) ;
 int rdma_ah_set_ah_flags (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_interface_id (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_subnet_prefix (struct rdma_ah_attr*,int ) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static inline void hfi1_update_ah_attr(struct ib_device *ibdev,
           struct rdma_ah_attr *attr)
{
 struct hfi1_pportdata *ppd;
 struct hfi1_ibport *ibp;
 u32 dlid = rdma_ah_get_dlid(attr);





 ibp = to_iport(ibdev, rdma_ah_get_port_num(attr));
 ppd = ppd_from_ibp(ibp);
 if ((((dlid >= be16_to_cpu(IB_MULTICAST_LID_BASE)) ||
       (ppd->lid >= be16_to_cpu(IB_MULTICAST_LID_BASE))) &&
     (dlid != be32_to_cpu(OPA_LID_PERMISSIVE)) &&
     (dlid != be16_to_cpu(IB_LID_PERMISSIVE)) &&
     (!(rdma_ah_get_ah_flags(attr) & IB_AH_GRH))) ||
     (rdma_ah_get_make_grd(attr))) {
  rdma_ah_set_ah_flags(attr, IB_AH_GRH);
  rdma_ah_set_interface_id(attr, OPA_MAKE_ID(dlid));
  rdma_ah_set_subnet_prefix(attr, ibp->rvp.gid_prefix);
 }
}
