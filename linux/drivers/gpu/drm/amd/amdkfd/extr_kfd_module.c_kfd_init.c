
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int KFD_MAX_NUM_OF_QUEUES_PER_DEVICE ;
 scalar_t__ KFD_SCHED_POLICY_HWS ;
 scalar_t__ KFD_SCHED_POLICY_NO_HWS ;
 int kfd_chardev_exit () ;
 int kfd_chardev_init () ;
 int kfd_debugfs_init () ;
 int kfd_process_create_wq () ;
 int kfd_procfs_init () ;
 int kfd_topology_init () ;
 int kfd_topology_shutdown () ;
 int max_num_of_queues_per_device ;
 int pr_err (char*) ;
 scalar_t__ sched_policy ;

__attribute__((used)) static int kfd_init(void)
{
 int err;


 if ((sched_policy < KFD_SCHED_POLICY_HWS) ||
  (sched_policy > KFD_SCHED_POLICY_NO_HWS)) {
  pr_err("sched_policy has invalid value\n");
  return -EINVAL;
 }


 if ((max_num_of_queues_per_device < 1) ||
  (max_num_of_queues_per_device >
   KFD_MAX_NUM_OF_QUEUES_PER_DEVICE)) {
  pr_err("max_num_of_queues_per_device must be between 1 to KFD_MAX_NUM_OF_QUEUES_PER_DEVICE\n");
  return -EINVAL;
 }

 err = kfd_chardev_init();
 if (err < 0)
  goto err_ioctl;

 err = kfd_topology_init();
 if (err < 0)
  goto err_topology;

 err = kfd_process_create_wq();
 if (err < 0)
  goto err_create_wq;




 kfd_procfs_init();

 kfd_debugfs_init();

 return 0;

err_create_wq:
 kfd_topology_shutdown();
err_topology:
 kfd_chardev_exit();
err_ioctl:
 return err;
}
