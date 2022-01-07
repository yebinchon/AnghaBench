
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seqno_fence {int base; TYPE_1__* ops; int sync_buf; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int (* release ) (struct dma_fence*) ;} ;


 int dma_buf_put (int ) ;
 int dma_fence_free (int *) ;
 int stub1 (struct dma_fence*) ;
 struct seqno_fence* to_seqno_fence (struct dma_fence*) ;

__attribute__((used)) static void seqno_release(struct dma_fence *fence)
{
 struct seqno_fence *f = to_seqno_fence(fence);

 dma_buf_put(f->sync_buf);
 if (f->ops->release)
  f->ops->release(fence);
 else
  dma_fence_free(&f->base);
}
