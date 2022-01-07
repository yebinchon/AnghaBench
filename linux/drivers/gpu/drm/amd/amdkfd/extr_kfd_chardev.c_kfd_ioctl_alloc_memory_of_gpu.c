
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kgd_mem {int dummy; } ;
struct kfd_process_device {int vm; } ;
struct kfd_process {int mutex; } ;
struct kfd_ioctl_alloc_memory_of_gpu_args {int mmap_offset; int flags; scalar_t__ size; int gpu_id; int handle; int va_addr; } ;
struct kfd_dev {int kgd; } ;
struct file {int dummy; } ;


 long EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct kfd_process_device*) ;
 int KFD_IOC_ALLOC_MEM_FLAGS_DOORBELL ;
 int KFD_IOC_ALLOC_MEM_FLAGS_MMIO_REMAP ;
 int KFD_IOC_ALLOC_MEM_FLAGS_PUBLIC ;
 int KFD_IOC_ALLOC_MEM_FLAGS_VRAM ;
 int KFD_MMAP_GPU_ID (int ) ;
 int KFD_MMAP_TYPE_MMIO ;
 int MAKE_HANDLE (int ,int) ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 long PTR_ERR (struct kfd_process_device*) ;
 int amdgpu_amdkfd_get_mmio_remap_phys_addr (int ) ;
 long amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu (int ,int ,scalar_t__,int ,struct kgd_mem**,int*,int) ;
 int amdgpu_amdkfd_gpuvm_free_memory_of_gpu (int ,struct kgd_mem*) ;
 struct kfd_process_device* kfd_bind_process_to_device (struct kfd_dev*,struct kfd_process*) ;
 int kfd_dev_is_large_bar (struct kfd_dev*) ;
 struct kfd_dev* kfd_device_by_id (int ) ;
 scalar_t__ kfd_doorbell_process_slice (struct kfd_dev*) ;
 int kfd_get_process_doorbells (struct kfd_dev*,struct kfd_process*) ;
 int kfd_process_device_create_obj_handle (struct kfd_process_device*,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int kfd_ioctl_alloc_memory_of_gpu(struct file *filep,
     struct kfd_process *p, void *data)
{
 struct kfd_ioctl_alloc_memory_of_gpu_args *args = data;
 struct kfd_process_device *pdd;
 void *mem;
 struct kfd_dev *dev;
 int idr_handle;
 long err;
 uint64_t offset = args->mmap_offset;
 uint32_t flags = args->flags;

 if (args->size == 0)
  return -EINVAL;

 dev = kfd_device_by_id(args->gpu_id);
 if (!dev)
  return -EINVAL;

 if ((flags & KFD_IOC_ALLOC_MEM_FLAGS_PUBLIC) &&
  (flags & KFD_IOC_ALLOC_MEM_FLAGS_VRAM) &&
  !kfd_dev_is_large_bar(dev)) {
  pr_err("Alloc host visible vram on small bar is not allowed\n");
  return -EINVAL;
 }

 if (flags & KFD_IOC_ALLOC_MEM_FLAGS_DOORBELL) {
  if (args->size != kfd_doorbell_process_slice(dev))
   return -EINVAL;
  offset = kfd_get_process_doorbells(dev, p);
 } else if (flags & KFD_IOC_ALLOC_MEM_FLAGS_MMIO_REMAP) {
  if (args->size != PAGE_SIZE)
   return -EINVAL;
  offset = amdgpu_amdkfd_get_mmio_remap_phys_addr(dev->kgd);
  if (!offset)
   return -ENOMEM;
 }

 mutex_lock(&p->mutex);

 pdd = kfd_bind_process_to_device(dev, p);
 if (IS_ERR(pdd)) {
  err = PTR_ERR(pdd);
  goto err_unlock;
 }

 err = amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(
  dev->kgd, args->va_addr, args->size,
  pdd->vm, (struct kgd_mem **) &mem, &offset,
  flags);

 if (err)
  goto err_unlock;

 idr_handle = kfd_process_device_create_obj_handle(pdd, mem);
 if (idr_handle < 0) {
  err = -EFAULT;
  goto err_free;
 }

 mutex_unlock(&p->mutex);

 args->handle = MAKE_HANDLE(args->gpu_id, idr_handle);
 args->mmap_offset = offset;




 if (flags & KFD_IOC_ALLOC_MEM_FLAGS_MMIO_REMAP) {
  args->mmap_offset = KFD_MMAP_TYPE_MMIO | KFD_MMAP_GPU_ID(args->gpu_id);
  args->mmap_offset <<= PAGE_SHIFT;
 }

 return 0;

err_free:
 amdgpu_amdkfd_gpuvm_free_memory_of_gpu(dev->kgd, (struct kgd_mem *)mem);
err_unlock:
 mutex_unlock(&p->mutex);
 return err;
}
