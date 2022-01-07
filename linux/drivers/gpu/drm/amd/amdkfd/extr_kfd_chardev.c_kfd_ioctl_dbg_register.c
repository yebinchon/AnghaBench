
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_process_device {int dummy; } ;
struct kfd_process {int mutex; } ;
struct kfd_ioctl_dbg_register_args {int gpu_id; } ;
struct kfd_dev {struct kfd_dbgmgr* dbgmgr; TYPE_1__* device_info; } ;
struct kfd_dbgmgr {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ asic_family; } ;


 scalar_t__ CHIP_CARRIZO ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct kfd_process_device*) ;
 long PTR_ERR (struct kfd_process_device*) ;
 struct kfd_process_device* kfd_bind_process_to_device (struct kfd_dev*,struct kfd_process*) ;
 int kfd_dbgmgr_create (struct kfd_dbgmgr**,struct kfd_dev*) ;
 int kfd_dbgmgr_destroy (struct kfd_dbgmgr*) ;
 long kfd_dbgmgr_register (struct kfd_dbgmgr*,struct kfd_process*) ;
 struct kfd_dev* kfd_device_by_id (int ) ;
 int * kfd_get_dbgmgr_mutex () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static int kfd_ioctl_dbg_register(struct file *filep,
    struct kfd_process *p, void *data)
{
 struct kfd_ioctl_dbg_register_args *args = data;
 struct kfd_dev *dev;
 struct kfd_dbgmgr *dbgmgr_ptr;
 struct kfd_process_device *pdd;
 bool create_ok;
 long status = 0;

 dev = kfd_device_by_id(args->gpu_id);
 if (!dev)
  return -EINVAL;

 if (dev->device_info->asic_family == CHIP_CARRIZO) {
  pr_debug("kfd_ioctl_dbg_register not supported on CZ\n");
  return -EINVAL;
 }

 mutex_lock(&p->mutex);
 mutex_lock(kfd_get_dbgmgr_mutex());





 pdd = kfd_bind_process_to_device(dev, p);
 if (IS_ERR(pdd)) {
  status = PTR_ERR(pdd);
  goto out;
 }

 if (!dev->dbgmgr) {

  create_ok = kfd_dbgmgr_create(&dbgmgr_ptr, dev);
  if (create_ok) {
   status = kfd_dbgmgr_register(dbgmgr_ptr, p);
   if (status != 0)
    kfd_dbgmgr_destroy(dbgmgr_ptr);
   else
    dev->dbgmgr = dbgmgr_ptr;
  }
 } else {
  pr_debug("debugger already registered\n");
  status = -EINVAL;
 }

out:
 mutex_unlock(kfd_get_dbgmgr_mutex());
 mutex_unlock(&p->mutex);

 return status;
}
