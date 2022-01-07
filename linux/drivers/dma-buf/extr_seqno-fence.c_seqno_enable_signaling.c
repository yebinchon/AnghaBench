
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seqno_fence {TYPE_1__* ops; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int (* enable_signaling ) (struct dma_fence*) ;} ;


 int stub1 (struct dma_fence*) ;
 struct seqno_fence* to_seqno_fence (struct dma_fence*) ;

__attribute__((used)) static bool seqno_enable_signaling(struct dma_fence *fence)
{
 struct seqno_fence *seqno_fence = to_seqno_fence(fence);

 return seqno_fence->ops->enable_signaling(fence);
}
