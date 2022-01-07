
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_nl_cbs {int dummy; } ;
struct TYPE_2__ {int cb_table; } ;


 int READ_ONCE (int ) ;
 scalar_t__ WARN_ON (int) ;
 int is_nl_msg_valid (unsigned int,int ) ;
 TYPE_1__* rdma_nl_types ;
 int smp_store_release (int *,struct rdma_nl_cbs const*) ;

void rdma_nl_register(unsigned int index,
        const struct rdma_nl_cbs cb_table[])
{
 if (WARN_ON(!is_nl_msg_valid(index, 0)) ||
     WARN_ON(READ_ONCE(rdma_nl_types[index].cb_table)))
  return;


 smp_store_release(&rdma_nl_types[index].cb_table, cb_table);
}
