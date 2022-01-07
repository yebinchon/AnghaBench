
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ww_acquire_ctx {int dummy; } ;
struct list_head {int dummy; } ;
struct ttm_validate_buffer {int num_shared; struct list_head head; int * bo; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va {int dummy; } ;
struct amdgpu_bo_list_entry {int dummy; } ;
struct amdgpu_bo {int tbo; } ;


 int AMDGPU_PTE_EXECUTABLE ;
 int AMDGPU_PTE_READABLE ;
 int AMDGPU_PTE_WRITEABLE ;
 int DRM_ERROR (char*,...) ;
 int ENOMEM ;
 int INIT_LIST_HEAD (struct list_head*) ;
 struct amdgpu_bo_va* amdgpu_vm_bo_add (struct amdgpu_device*,struct amdgpu_vm*,struct amdgpu_bo*) ;
 int amdgpu_vm_bo_map (struct amdgpu_device*,struct amdgpu_bo_va*,int ,int ,int ,int) ;
 int amdgpu_vm_bo_rmv (struct amdgpu_device*,struct amdgpu_bo_va*) ;
 int amdgpu_vm_get_pd_bo (struct amdgpu_vm*,struct list_head*,struct amdgpu_bo_list_entry*) ;
 int list_add (struct list_head*,struct list_head*) ;
 int ttm_eu_backoff_reservation (struct ww_acquire_ctx*,struct list_head*) ;
 int ttm_eu_reserve_buffers (struct ww_acquire_ctx*,struct list_head*,int,int *,int) ;

int amdgpu_map_static_csa(struct amdgpu_device *adev, struct amdgpu_vm *vm,
     struct amdgpu_bo *bo, struct amdgpu_bo_va **bo_va,
     uint64_t csa_addr, uint32_t size)
{
 struct ww_acquire_ctx ticket;
 struct list_head list;
 struct amdgpu_bo_list_entry pd;
 struct ttm_validate_buffer csa_tv;
 int r;

 INIT_LIST_HEAD(&list);
 INIT_LIST_HEAD(&csa_tv.head);
 csa_tv.bo = &bo->tbo;
 csa_tv.num_shared = 1;

 list_add(&csa_tv.head, &list);
 amdgpu_vm_get_pd_bo(vm, &list, &pd);

 r = ttm_eu_reserve_buffers(&ticket, &list, 1, ((void*)0), 0);
 if (r) {
  DRM_ERROR("failed to reserve CSA,PD BOs: err=%d\n", r);
  return r;
 }

 *bo_va = amdgpu_vm_bo_add(adev, vm, bo);
 if (!*bo_va) {
  ttm_eu_backoff_reservation(&ticket, &list);
  DRM_ERROR("failed to create bo_va for static CSA\n");
  return -ENOMEM;
 }

 r = amdgpu_vm_bo_map(adev, *bo_va, csa_addr, 0, size,
        AMDGPU_PTE_READABLE | AMDGPU_PTE_WRITEABLE |
        AMDGPU_PTE_EXECUTABLE);

 if (r) {
  DRM_ERROR("failed to do bo_map on static CSA, err=%d\n", r);
  amdgpu_vm_bo_rmv(adev, *bo_va);
  ttm_eu_backoff_reservation(&ticket, &list);
  return r;
 }

 ttm_eu_backoff_reservation(&ticket, &list);
 return 0;
}
