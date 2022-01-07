
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cb_table; } ;


 int KBUILD_MODNAME ;
 int RDMA_NL_NUM_CLIENTS ;
 int WARN (int ,char*,int,int ) ;
 TYPE_1__* rdma_nl_types ;

void rdma_nl_exit(void)
{
 int idx;

 for (idx = 0; idx < RDMA_NL_NUM_CLIENTS; idx++)
  WARN(rdma_nl_types[idx].cb_table,
       "Netlink client %d wasn't released prior to unloading %s\n",
       idx, KBUILD_MODNAME);
}
