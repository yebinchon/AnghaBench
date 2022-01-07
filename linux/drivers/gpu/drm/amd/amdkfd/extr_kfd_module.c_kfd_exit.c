
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfd_chardev_exit () ;
 int kfd_debugfs_fini () ;
 int kfd_process_destroy_wq () ;
 int kfd_procfs_shutdown () ;
 int kfd_topology_shutdown () ;

__attribute__((used)) static void kfd_exit(void)
{
 kfd_debugfs_fini();
 kfd_process_destroy_wq();
 kfd_procfs_shutdown();
 kfd_topology_shutdown();
 kfd_chardev_exit();
}
