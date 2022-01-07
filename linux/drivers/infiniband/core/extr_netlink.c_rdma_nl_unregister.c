
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sem; int * cb_table; } ;


 int down_write (int *) ;
 TYPE_1__* rdma_nl_types ;
 int up_write (int *) ;

void rdma_nl_unregister(unsigned int index)
{
 down_write(&rdma_nl_types[index].sem);
 rdma_nl_types[index].cb_table = ((void*)0);
 up_write(&rdma_nl_types[index].sem);
}
