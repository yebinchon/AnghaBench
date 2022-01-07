
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bo_vm_reservation_context {int reserved; int * vm_pd; int * sync; int list; int ticket; } ;


 int amdgpu_sync_wait (int *,int) ;
 int kfree (int *) ;
 int ttm_eu_backoff_reservation (int *,int *) ;

__attribute__((used)) static int unreserve_bo_and_vms(struct bo_vm_reservation_context *ctx,
     bool wait, bool intr)
{
 int ret = 0;

 if (wait)
  ret = amdgpu_sync_wait(ctx->sync, intr);

 if (ctx->reserved)
  ttm_eu_backoff_reservation(&ctx->ticket, &ctx->list);
 kfree(ctx->vm_pd);

 ctx->sync = ((void*)0);

 ctx->reserved = 0;
 ctx->vm_pd = ((void*)0);

 return ret;
}
