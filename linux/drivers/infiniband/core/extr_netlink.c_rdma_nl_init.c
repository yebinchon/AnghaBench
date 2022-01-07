
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sem; } ;


 int RDMA_NL_NUM_CLIENTS ;
 int init_rwsem (int *) ;
 TYPE_1__* rdma_nl_types ;

void rdma_nl_init(void)
{
 int idx;

 for (idx = 0; idx < RDMA_NL_NUM_CLIENTS; idx++)
  init_rwsem(&rdma_nl_types[idx].sem);
}
