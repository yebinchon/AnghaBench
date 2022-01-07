
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sgid_attr; } ;
struct rdma_ah_attr {TYPE_1__ grh; } ;


 int rdma_destroy_ah_attr (struct rdma_ah_attr*) ;

void rdma_move_ah_attr(struct rdma_ah_attr *dest, struct rdma_ah_attr *src)
{
 rdma_destroy_ah_attr(dest);
 *dest = *src;
 src->grh.sgid_attr = ((void*)0);
}
