
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ib_gid_attr const* sgid_attr; } ;
struct rdma_ah_attr {TYPE_1__ grh; } ;
struct ib_gid_attr {int dummy; } ;


 int rdma_destroy_ah_attr (struct rdma_ah_attr*) ;

__attribute__((used)) static void rdma_unfill_sgid_attr(struct rdma_ah_attr *ah_attr,
      const struct ib_gid_attr *old_sgid_attr)
{




 if (ah_attr->grh.sgid_attr == old_sgid_attr)
  return;






 rdma_destroy_ah_attr(ah_attr);
}
