
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_process {int dummy; } ;
struct kfd_ioctl_dbg_unregister_args {int gpu_id; } ;
struct kfd_dev {int * dbgmgr; TYPE_1__* device_info; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ asic_family; } ;


 scalar_t__ CHIP_CARRIZO ;
 int EINVAL ;
 int kfd_dbgmgr_destroy (int *) ;
 long kfd_dbgmgr_unregister (int *,struct kfd_process*) ;
 struct kfd_dev* kfd_device_by_id (int ) ;
 int kfd_get_dbgmgr_mutex () ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static int kfd_ioctl_dbg_unregister(struct file *filep,
    struct kfd_process *p, void *data)
{
 struct kfd_ioctl_dbg_unregister_args *args = data;
 struct kfd_dev *dev;
 long status;

 dev = kfd_device_by_id(args->gpu_id);
 if (!dev || !dev->dbgmgr)
  return -EINVAL;

 if (dev->device_info->asic_family == CHIP_CARRIZO) {
  pr_debug("kfd_ioctl_dbg_unregister not supported on CZ\n");
  return -EINVAL;
 }

 mutex_lock(kfd_get_dbgmgr_mutex());

 status = kfd_dbgmgr_unregister(dev->dbgmgr, p);
 if (!status) {
  kfd_dbgmgr_destroy(dev->dbgmgr);
  dev->dbgmgr = ((void*)0);
 }

 mutex_unlock(kfd_get_dbgmgr_mutex());

 return status;
}
