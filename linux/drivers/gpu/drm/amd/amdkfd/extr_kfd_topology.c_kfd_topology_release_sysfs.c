
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * kobj_topology; int * kobj_nodes; int attr_props; int attr_genid; } ;


 int kfd_remove_sysfs_node_tree () ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 TYPE_1__ sys_props ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static void kfd_topology_release_sysfs(void)
{
 kfd_remove_sysfs_node_tree();
 if (sys_props.kobj_topology) {
  sysfs_remove_file(sys_props.kobj_topology,
    &sys_props.attr_genid);
  sysfs_remove_file(sys_props.kobj_topology,
    &sys_props.attr_props);
  if (sys_props.kobj_nodes) {
   kobject_del(sys_props.kobj_nodes);
   kobject_put(sys_props.kobj_nodes);
   sys_props.kobj_nodes = ((void*)0);
  }
  kobject_del(sys_props.kobj_topology);
  kobject_put(sys_props.kobj_topology);
  sys_props.kobj_topology = ((void*)0);
 }
}
