
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seqno_fence {TYPE_1__* ops; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* signaled ) (struct dma_fence*) ;} ;


 scalar_t__ stub1 (struct dma_fence*) ;
 struct seqno_fence* to_seqno_fence (struct dma_fence*) ;

__attribute__((used)) static bool seqno_signaled(struct dma_fence *fence)
{
 struct seqno_fence *seqno_fence = to_seqno_fence(fence);

 return seqno_fence->ops->signaled && seqno_fence->ops->signaled(fence);
}
