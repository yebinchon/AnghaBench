
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nouveau_vma {TYPE_1__* vmm; int head; TYPE_2__* fence; } ;
struct TYPE_6__ {int func; } ;
struct nouveau_gem_object_unmap {TYPE_3__ work; struct nouveau_vma* vma; } ;
struct nouveau_bo {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_5__ {struct dma_fence base; } ;
struct TYPE_4__ {int cli; } ;


 int GFP_KERNEL ;
 int HZ ;
 int WARN_ON (int) ;
 scalar_t__ dma_fence_wait_timeout (struct dma_fence*,int,int) ;
 struct nouveau_gem_object_unmap* kmalloc (int,int ) ;
 int list_del_init (int *) ;
 int nouveau_cli_work_queue (int ,struct dma_fence*,TYPE_3__*) ;
 int nouveau_gem_object_delete (struct nouveau_vma*) ;
 int nouveau_gem_object_delete_work ;

__attribute__((used)) static void
nouveau_gem_object_unmap(struct nouveau_bo *nvbo, struct nouveau_vma *vma)
{
 struct dma_fence *fence = vma->fence ? &vma->fence->base : ((void*)0);
 struct nouveau_gem_object_unmap *work;

 list_del_init(&vma->head);

 if (!fence) {
  nouveau_gem_object_delete(vma);
  return;
 }

 if (!(work = kmalloc(sizeof(*work), GFP_KERNEL))) {
  WARN_ON(dma_fence_wait_timeout(fence, 0, 2 * HZ) <= 0);
  nouveau_gem_object_delete(vma);
  return;
 }

 work->work.func = nouveau_gem_object_delete_work;
 work->vma = vma;
 nouveau_cli_work_queue(vma->vmm->cli, fence, &work->work);
}
