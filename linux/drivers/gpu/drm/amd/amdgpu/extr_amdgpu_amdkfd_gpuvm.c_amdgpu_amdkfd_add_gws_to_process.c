
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kgd_mem {int lock; int sync; struct amdkfd_process_info* process_info; int domain; int bo; } ;
struct amdkfd_process_info {int lock; TYPE_3__* eviction_fence; } ;
struct TYPE_4__ {int resv; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;
struct TYPE_6__ {int base; } ;


 int AMDGPU_GEM_DOMAIN_GWS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int add_kgd_mem_to_kfd_bo_list (struct kgd_mem*,struct amdkfd_process_info*,int) ;
 int amdgpu_amdkfd_bo_validate (struct amdgpu_bo*,int ,int) ;
 int amdgpu_bo_fence (struct amdgpu_bo*,int *,int) ;
 int amdgpu_bo_ref (struct amdgpu_bo*) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int amdgpu_sync_create (int *) ;
 int amdgpu_sync_free (int *) ;
 int dma_resv_reserve_shared (int ,int) ;
 int kfree (struct kgd_mem*) ;
 struct kgd_mem* kzalloc (int,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int remove_kgd_mem_from_kfd_bo_list (struct kgd_mem*,struct amdkfd_process_info*) ;
 scalar_t__ unlikely (int) ;

int amdgpu_amdkfd_add_gws_to_process(void *info, void *gws, struct kgd_mem **mem)
{
 struct amdkfd_process_info *process_info = (struct amdkfd_process_info *)info;
 struct amdgpu_bo *gws_bo = (struct amdgpu_bo *)gws;
 int ret;

 if (!info || !gws)
  return -EINVAL;

 *mem = kzalloc(sizeof(struct kgd_mem), GFP_KERNEL);
 if (!*mem)
  return -ENOMEM;

 mutex_init(&(*mem)->lock);
 (*mem)->bo = amdgpu_bo_ref(gws_bo);
 (*mem)->domain = AMDGPU_GEM_DOMAIN_GWS;
 (*mem)->process_info = process_info;
 add_kgd_mem_to_kfd_bo_list(*mem, process_info, 0);
 amdgpu_sync_create(&(*mem)->sync);



 mutex_lock(&(*mem)->process_info->lock);
 ret = amdgpu_bo_reserve(gws_bo, 0);
 if (unlikely(ret)) {
  pr_err("Reserve gws bo failed %d\n", ret);
  goto bo_reservation_failure;
 }

 ret = amdgpu_amdkfd_bo_validate(gws_bo, AMDGPU_GEM_DOMAIN_GWS, 1);
 if (ret) {
  pr_err("GWS BO validate failed %d\n", ret);
  goto bo_validation_failure;
 }




 ret = dma_resv_reserve_shared(gws_bo->tbo.base.resv, 1);
 if (ret)
  goto reserve_shared_fail;
 amdgpu_bo_fence(gws_bo, &process_info->eviction_fence->base, 1);
 amdgpu_bo_unreserve(gws_bo);
 mutex_unlock(&(*mem)->process_info->lock);

 return ret;

reserve_shared_fail:
bo_validation_failure:
 amdgpu_bo_unreserve(gws_bo);
bo_reservation_failure:
 mutex_unlock(&(*mem)->process_info->lock);
 amdgpu_sync_free(&(*mem)->sync);
 remove_kgd_mem_from_kfd_bo_list(*mem, process_info);
 amdgpu_bo_unref(&gws_bo);
 mutex_destroy(&(*mem)->lock);
 kfree(*mem);
 *mem = ((void*)0);
 return ret;
}
