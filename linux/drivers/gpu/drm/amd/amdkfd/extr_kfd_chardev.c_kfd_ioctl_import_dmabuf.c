
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kgd_mem {int dummy; } ;
struct kfd_process_device {int vm; } ;
struct kfd_process {int mutex; } ;
struct kfd_ioctl_import_dmabuf_args {int gpu_id; int handle; int va_addr; int dmabuf_fd; } ;
struct kfd_dev {int kgd; } ;
struct file {int dummy; } ;
struct dma_buf {int vm; } ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct kfd_process_device*) ;
 int MAKE_HANDLE (int ,int) ;
 int PTR_ERR (struct kfd_process_device*) ;
 int amdgpu_amdkfd_gpuvm_free_memory_of_gpu (int ,struct kgd_mem*) ;
 int amdgpu_amdkfd_gpuvm_import_dmabuf (int ,struct kfd_process_device*,int ,int ,struct kgd_mem**,int *,int *) ;
 struct kfd_process_device* dma_buf_get (int ) ;
 struct kfd_process_device* kfd_bind_process_to_device (struct kfd_dev*,struct kfd_process*) ;
 struct kfd_dev* kfd_device_by_id (int ) ;
 int kfd_process_device_create_obj_handle (struct kfd_process_device*,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kfd_ioctl_import_dmabuf(struct file *filep,
       struct kfd_process *p, void *data)
{
 struct kfd_ioctl_import_dmabuf_args *args = data;
 struct kfd_process_device *pdd;
 struct dma_buf *dmabuf;
 struct kfd_dev *dev;
 int idr_handle;
 uint64_t size;
 void *mem;
 int r;

 dev = kfd_device_by_id(args->gpu_id);
 if (!dev)
  return -EINVAL;

 dmabuf = dma_buf_get(args->dmabuf_fd);
 if (IS_ERR(dmabuf))
  return PTR_ERR(dmabuf);

 mutex_lock(&p->mutex);

 pdd = kfd_bind_process_to_device(dev, p);
 if (IS_ERR(pdd)) {
  r = PTR_ERR(pdd);
  goto err_unlock;
 }

 r = amdgpu_amdkfd_gpuvm_import_dmabuf(dev->kgd, dmabuf,
           args->va_addr, pdd->vm,
           (struct kgd_mem **)&mem, &size,
           ((void*)0));
 if (r)
  goto err_unlock;

 idr_handle = kfd_process_device_create_obj_handle(pdd, mem);
 if (idr_handle < 0) {
  r = -EFAULT;
  goto err_free;
 }

 mutex_unlock(&p->mutex);

 args->handle = MAKE_HANDLE(args->gpu_id, idr_handle);

 return 0;

err_free:
 amdgpu_amdkfd_gpuvm_free_memory_of_gpu(dev->kgd, (struct kgd_mem *)mem);
err_unlock:
 mutex_unlock(&p->mutex);
 return r;
}
