
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ib_gid_attr const* sgid_attr; } ;
struct rdma_ah_attr {int ah_flags; TYPE_1__ grh; } ;
struct ib_gid_attr {int dummy; } ;


 int IB_AH_GRH ;
 int rdma_hold_gid_attr (struct ib_gid_attr const*) ;
 int rdma_put_gid_attr (struct ib_gid_attr const*) ;

__attribute__((used)) static const struct ib_gid_attr *
rdma_update_sgid_attr(struct rdma_ah_attr *ah_attr,
        const struct ib_gid_attr *old_attr)
{
 if (old_attr)
  rdma_put_gid_attr(old_attr);
 if (ah_attr->ah_flags & IB_AH_GRH) {
  rdma_hold_gid_attr(ah_attr->grh.sgid_attr);
  return ah_attr->grh.sgid_attr;
 }
 return ((void*)0);
}
