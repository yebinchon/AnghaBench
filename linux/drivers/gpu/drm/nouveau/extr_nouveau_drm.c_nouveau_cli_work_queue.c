
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_cli_work {int cb; int head; struct nouveau_cli* cli; int fence; } ;
struct nouveau_cli {int lock; int worker; } ;
struct dma_fence {int dummy; } ;


 scalar_t__ dma_fence_add_callback (struct dma_fence*,int *,int (*) (struct dma_fence*,int *)) ;
 int dma_fence_get (struct dma_fence*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_cli_work_fence (struct dma_fence*,int *) ;

void
nouveau_cli_work_queue(struct nouveau_cli *cli, struct dma_fence *fence,
         struct nouveau_cli_work *work)
{
 work->fence = dma_fence_get(fence);
 work->cli = cli;
 mutex_lock(&cli->lock);
 list_add_tail(&work->head, &cli->worker);
 if (dma_fence_add_callback(fence, &work->cb, nouveau_cli_work_fence))
  nouveau_cli_work_fence(fence, &work->cb);
 mutex_unlock(&cli->lock);
}
