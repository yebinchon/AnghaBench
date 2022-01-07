
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM_NUMA_NODE ;
 int __dm_get_module_param_int (int *,int ,scalar_t__) ;
 int dm_numa_node ;
 scalar_t__ num_online_nodes () ;

__attribute__((used)) static unsigned dm_get_numa_node(void)
{
 return __dm_get_module_param_int(&dm_numa_node,
      DM_NUMA_NODE, num_online_nodes() - 1);
}
