
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process_device {struct file* drm_file; } ;
struct kfd_process {int mutex; } ;
struct kfd_ioctl_acquire_vm_args {int drm_fd; int gpu_id; } ;
struct kfd_dev {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 struct file* fget (int ) ;
 int fput (struct file*) ;
 struct kfd_dev* kfd_device_by_id (int ) ;
 struct kfd_process_device* kfd_get_process_device_data (struct kfd_dev*,struct kfd_process*) ;
 int kfd_process_device_init_vm (struct kfd_process_device*,struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kfd_ioctl_acquire_vm(struct file *filep, struct kfd_process *p,
    void *data)
{
 struct kfd_ioctl_acquire_vm_args *args = data;
 struct kfd_process_device *pdd;
 struct kfd_dev *dev;
 struct file *drm_file;
 int ret;

 dev = kfd_device_by_id(args->gpu_id);
 if (!dev)
  return -EINVAL;

 drm_file = fget(args->drm_fd);
 if (!drm_file)
  return -EINVAL;

 mutex_lock(&p->mutex);

 pdd = kfd_get_process_device_data(dev, p);
 if (!pdd) {
  ret = -EINVAL;
  goto err_unlock;
 }

 if (pdd->drm_file) {
  ret = pdd->drm_file == drm_file ? 0 : -EBUSY;
  goto err_unlock;
 }

 ret = kfd_process_device_init_vm(pdd, drm_file);
 if (ret)
  goto err_unlock;

 mutex_unlock(&p->mutex);

 return 0;

err_unlock:
 mutex_unlock(&p->mutex);
 fput(drm_file);
 return ret;
}
