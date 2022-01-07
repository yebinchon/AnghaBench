
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mr; } ;
struct rvt_ack_entry {TYPE_1__ rdma_sge; } ;


 int rvt_put_mr (int *) ;

__attribute__((used)) static inline void release_rdma_sge_mr(struct rvt_ack_entry *e)
{
 if (e->rdma_sge.mr) {
  rvt_put_mr(e->rdma_sge.mr);
  e->rdma_sge.mr = ((void*)0);
 }
}
