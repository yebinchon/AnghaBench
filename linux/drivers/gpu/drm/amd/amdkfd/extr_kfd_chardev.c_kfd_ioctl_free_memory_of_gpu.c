
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_mem {int dummy; } ;
struct kfd_process_device {int dummy; } ;
struct kfd_process {int mutex; } ;
struct kfd_ioctl_free_memory_of_gpu_args {int handle; } ;
struct kfd_dev {int kgd; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int GET_GPU_ID (int ) ;
 int GET_IDR_HANDLE (int ) ;
 int amdgpu_amdkfd_gpuvm_free_memory_of_gpu (int ,struct kgd_mem*) ;
 struct kfd_dev* kfd_device_by_id (int ) ;
 struct kfd_process_device* kfd_get_process_device_data (struct kfd_dev*,struct kfd_process*) ;
 int kfd_process_device_remove_obj_handle (struct kfd_process_device*,int ) ;
 void* kfd_process_device_translate_handle (struct kfd_process_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int kfd_ioctl_free_memory_of_gpu(struct file *filep,
     struct kfd_process *p, void *data)
{
 struct kfd_ioctl_free_memory_of_gpu_args *args = data;
 struct kfd_process_device *pdd;
 void *mem;
 struct kfd_dev *dev;
 int ret;

 dev = kfd_device_by_id(GET_GPU_ID(args->handle));
 if (!dev)
  return -EINVAL;

 mutex_lock(&p->mutex);

 pdd = kfd_get_process_device_data(dev, p);
 if (!pdd) {
  pr_err("Process device data doesn't exist\n");
  ret = -EINVAL;
  goto err_unlock;
 }

 mem = kfd_process_device_translate_handle(
  pdd, GET_IDR_HANDLE(args->handle));
 if (!mem) {
  ret = -EINVAL;
  goto err_unlock;
 }

 ret = amdgpu_amdkfd_gpuvm_free_memory_of_gpu(dev->kgd,
      (struct kgd_mem *)mem);




 if (!ret)
  kfd_process_device_remove_obj_handle(
   pdd, GET_IDR_HANDLE(args->handle));

err_unlock:
 mutex_unlock(&p->mutex);
 return ret;
}
