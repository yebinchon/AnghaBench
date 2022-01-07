
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kgd_mem {int sync; struct amdgpu_bo* bo; } ;
struct TYPE_3__ {int num_shared; int head; int * bo; } ;
struct TYPE_4__ {TYPE_1__ tv; scalar_t__ priority; } ;
struct bo_vm_reservation_context {int reserved; int n_vms; int * vm_pd; int duplicates; int list; int ticket; TYPE_2__ kfd_bo; int * sync; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_bo {int tbo; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int amdgpu_vm_get_pd_bo (struct amdgpu_vm*,int *,int *) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int list_add (int *,int *) ;
 int pr_err (char*) ;
 int ttm_eu_reserve_buffers (int *,int *,int,int *,int) ;

__attribute__((used)) static int reserve_bo_and_vm(struct kgd_mem *mem,
         struct amdgpu_vm *vm,
         struct bo_vm_reservation_context *ctx)
{
 struct amdgpu_bo *bo = mem->bo;
 int ret;

 WARN_ON(!vm);

 ctx->reserved = 0;
 ctx->n_vms = 1;
 ctx->sync = &mem->sync;

 INIT_LIST_HEAD(&ctx->list);
 INIT_LIST_HEAD(&ctx->duplicates);

 ctx->vm_pd = kcalloc(ctx->n_vms, sizeof(*ctx->vm_pd), GFP_KERNEL);
 if (!ctx->vm_pd)
  return -ENOMEM;

 ctx->kfd_bo.priority = 0;
 ctx->kfd_bo.tv.bo = &bo->tbo;
 ctx->kfd_bo.tv.num_shared = 1;
 list_add(&ctx->kfd_bo.tv.head, &ctx->list);

 amdgpu_vm_get_pd_bo(vm, &ctx->list, &ctx->vm_pd[0]);

 ret = ttm_eu_reserve_buffers(&ctx->ticket, &ctx->list,
         0, &ctx->duplicates, 1);
 if (!ret)
  ctx->reserved = 1;
 else {
  pr_err("Failed to reserve buffers in ttm\n");
  kfree(ctx->vm_pd);
  ctx->vm_pd = ((void*)0);
 }

 return ret;
}
