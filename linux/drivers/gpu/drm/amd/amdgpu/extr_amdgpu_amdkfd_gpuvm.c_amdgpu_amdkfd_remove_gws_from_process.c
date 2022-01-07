
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_mem {int lock; int sync; struct amdgpu_bo* bo; } ;
struct amdkfd_process_info {int eviction_fence; } ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_amdkfd_remove_eviction_fence (struct amdgpu_bo*,int ) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int amdgpu_sync_free (int *) ;
 int kfree (void*) ;
 int mutex_destroy (int *) ;
 int pr_err (char*,int) ;
 int remove_kgd_mem_from_kfd_bo_list (struct kgd_mem*,struct amdkfd_process_info*) ;
 scalar_t__ unlikely (int) ;

int amdgpu_amdkfd_remove_gws_from_process(void *info, void *mem)
{
 int ret;
 struct amdkfd_process_info *process_info = (struct amdkfd_process_info *)info;
 struct kgd_mem *kgd_mem = (struct kgd_mem *)mem;
 struct amdgpu_bo *gws_bo = kgd_mem->bo;




 remove_kgd_mem_from_kfd_bo_list(kgd_mem, process_info);

 ret = amdgpu_bo_reserve(gws_bo, 0);
 if (unlikely(ret)) {
  pr_err("Reserve gws bo failed %d\n", ret);

  return ret;
 }
 amdgpu_amdkfd_remove_eviction_fence(gws_bo,
   process_info->eviction_fence);
 amdgpu_bo_unreserve(gws_bo);
 amdgpu_sync_free(&kgd_mem->sync);
 amdgpu_bo_unref(&gws_bo);
 mutex_destroy(&kgd_mem->lock);
 kfree(mem);
 return 0;
}
