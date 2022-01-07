
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kgd_mem {int dummy; } ;
struct kfd_process_device {int vm; struct kfd_dev* dev; } ;
struct kfd_dev {int kgd; } ;


 int amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu (int ,int ,int ,int ,struct kgd_mem**,int *,int ) ;
 int amdgpu_amdkfd_gpuvm_free_memory_of_gpu (int ,struct kgd_mem*) ;
 int amdgpu_amdkfd_gpuvm_map_gtt_bo_to_kernel (int ,struct kgd_mem*,void**,int *) ;
 int amdgpu_amdkfd_gpuvm_map_memory_to_gpu (int ,struct kgd_mem*,int ) ;
 int amdgpu_amdkfd_gpuvm_sync_memory (int ,struct kgd_mem*,int) ;
 int kfd_process_device_create_obj_handle (struct kfd_process_device*,struct kgd_mem*) ;
 int kfd_process_device_remove_obj_handle (struct kfd_process_device*,int) ;
 int kfd_process_free_gpuvm (struct kgd_mem*,struct kfd_process_device*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int kfd_process_alloc_gpuvm(struct kfd_process_device *pdd,
       uint64_t gpu_va, uint32_t size,
       uint32_t flags, void **kptr)
{
 struct kfd_dev *kdev = pdd->dev;
 struct kgd_mem *mem = ((void*)0);
 int handle;
 int err;

 err = amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(kdev->kgd, gpu_va, size,
       pdd->vm, &mem, ((void*)0), flags);
 if (err)
  goto err_alloc_mem;

 err = amdgpu_amdkfd_gpuvm_map_memory_to_gpu(kdev->kgd, mem, pdd->vm);
 if (err)
  goto err_map_mem;

 err = amdgpu_amdkfd_gpuvm_sync_memory(kdev->kgd, mem, 1);
 if (err) {
  pr_debug("Sync memory failed, wait interrupted by user signal\n");
  goto sync_memory_failed;
 }






 handle = kfd_process_device_create_obj_handle(pdd, mem);

 if (handle < 0) {
  err = handle;
  goto free_gpuvm;
 }

 if (kptr) {
  err = amdgpu_amdkfd_gpuvm_map_gtt_bo_to_kernel(kdev->kgd,
    (struct kgd_mem *)mem, kptr, ((void*)0));
  if (err) {
   pr_debug("Map GTT BO to kernel failed\n");
   goto free_obj_handle;
  }
 }

 return err;

free_obj_handle:
 kfd_process_device_remove_obj_handle(pdd, handle);
free_gpuvm:
sync_memory_failed:
 kfd_process_free_gpuvm(mem, pdd);
 return err;

err_map_mem:
 amdgpu_amdkfd_gpuvm_free_memory_of_gpu(kdev->kgd, mem);
err_alloc_mem:
 *kptr = ((void*)0);
 return err;
}
