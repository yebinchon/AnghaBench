
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sgid_attr; } ;
struct rdma_ah_attr {TYPE_1__ grh; } ;


 int rdma_destroy_ah_attr (struct rdma_ah_attr*) ;
 int rdma_hold_gid_attr (scalar_t__) ;

void rdma_replace_ah_attr(struct rdma_ah_attr *old,
     const struct rdma_ah_attr *new)
{
 rdma_destroy_ah_attr(old);
 *old = *new;
 if (old->grh.sgid_attr)
  rdma_hold_gid_attr(old->grh.sgid_attr);
}
