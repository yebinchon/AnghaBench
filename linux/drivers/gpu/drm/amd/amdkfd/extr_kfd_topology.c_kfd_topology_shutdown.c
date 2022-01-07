
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int down_write (int *) ;
 int kfd_release_live_view () ;
 int kfd_topology_release_sysfs () ;
 int topology_lock ;
 int up_write (int *) ;

void kfd_topology_shutdown(void)
{
 down_write(&topology_lock);
 kfd_topology_release_sysfs();
 kfd_release_live_view();
 up_write(&topology_lock);
}
