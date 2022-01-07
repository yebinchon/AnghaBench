
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sgid_attr; } ;
struct rdma_ah_attr {TYPE_1__ grh; } ;


 int rdma_hold_gid_attr (scalar_t__) ;

void rdma_copy_ah_attr(struct rdma_ah_attr *dest,
         const struct rdma_ah_attr *src)
{
 *dest = *src;
 if (dest->grh.sgid_attr)
  rdma_hold_gid_attr(dest->grh.sgid_attr);
}
