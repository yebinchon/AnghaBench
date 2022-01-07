
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rdma_ah_attr {int dummy; } ;
struct ib_global_route {int dgid; } ;


 int IB_LID_PERMISSIVE ;
 int IB_MULTICAST_LID_BASE ;
 int OPA_LID_PERMISSIVE ;
 int OPA_MCAST_NR ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ ib_is_opa_gid (int *) ;
 scalar_t__ opa_get_lid_from_gid (int *) ;
 scalar_t__ opa_get_mcast_base (int ) ;
 scalar_t__ rdma_ah_get_dlid (struct rdma_ah_attr*) ;
 struct ib_global_route* rdma_ah_read_grh (struct rdma_ah_attr*) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,scalar_t__) ;

__attribute__((used)) static inline void hfi1_make_opa_lid(struct rdma_ah_attr *attr)
{
 const struct ib_global_route *grh = rdma_ah_read_grh(attr);
 u32 dlid = rdma_ah_get_dlid(attr);
 if (ib_is_opa_gid(&grh->dgid))
  dlid = opa_get_lid_from_gid(&grh->dgid);
 else if ((dlid >= be16_to_cpu(IB_MULTICAST_LID_BASE)) &&
   (dlid != be16_to_cpu(IB_LID_PERMISSIVE)) &&
   (dlid != be32_to_cpu(OPA_LID_PERMISSIVE)))
  dlid = dlid - be16_to_cpu(IB_MULTICAST_LID_BASE) +
   opa_get_mcast_base(OPA_MCAST_NR);
 else if (dlid == be16_to_cpu(IB_LID_PERMISSIVE))
  dlid = be32_to_cpu(OPA_LID_PERMISSIVE);

 rdma_ah_set_dlid(attr, dlid);
}
