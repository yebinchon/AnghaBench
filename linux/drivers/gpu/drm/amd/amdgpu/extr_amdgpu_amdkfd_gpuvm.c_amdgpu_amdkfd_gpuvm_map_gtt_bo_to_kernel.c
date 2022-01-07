
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int head; } ;
struct kgd_mem {TYPE_3__* process_info; TYPE_2__ validate_list; struct amdgpu_bo* bo; } ;
struct kgd_dev {int dummy; } ;
struct TYPE_4__ {int ttm; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;
struct TYPE_6__ {int lock; int eviction_fence; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int EINVAL ;
 int amdgpu_amdkfd_remove_eviction_fence (struct amdgpu_bo*,int ) ;
 int amdgpu_bo_kmap (struct amdgpu_bo*,void**) ;
 int amdgpu_bo_pin (struct amdgpu_bo*,int ) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_size (struct amdgpu_bo*) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 scalar_t__ amdgpu_ttm_tt_get_usermm (int ) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;

int amdgpu_amdkfd_gpuvm_map_gtt_bo_to_kernel(struct kgd_dev *kgd,
  struct kgd_mem *mem, void **kptr, uint64_t *size)
{
 int ret;
 struct amdgpu_bo *bo = mem->bo;

 if (amdgpu_ttm_tt_get_usermm(bo->tbo.ttm)) {
  pr_err("userptr can't be mapped to kernel\n");
  return -EINVAL;
 }




 mutex_lock(&mem->process_info->lock);

 ret = amdgpu_bo_reserve(bo, 1);
 if (ret) {
  pr_err("Failed to reserve bo. ret %d\n", ret);
  goto bo_reserve_failed;
 }

 ret = amdgpu_bo_pin(bo, AMDGPU_GEM_DOMAIN_GTT);
 if (ret) {
  pr_err("Failed to pin bo. ret %d\n", ret);
  goto pin_failed;
 }

 ret = amdgpu_bo_kmap(bo, kptr);
 if (ret) {
  pr_err("Failed to map bo to kernel. ret %d\n", ret);
  goto kmap_failed;
 }

 amdgpu_amdkfd_remove_eviction_fence(
  bo, mem->process_info->eviction_fence);
 list_del_init(&mem->validate_list.head);

 if (size)
  *size = amdgpu_bo_size(bo);

 amdgpu_bo_unreserve(bo);

 mutex_unlock(&mem->process_info->lock);
 return 0;

kmap_failed:
 amdgpu_bo_unpin(bo);
pin_failed:
 amdgpu_bo_unreserve(bo);
bo_reserve_failed:
 mutex_unlock(&mem->process_info->lock);

 return ret;
}
