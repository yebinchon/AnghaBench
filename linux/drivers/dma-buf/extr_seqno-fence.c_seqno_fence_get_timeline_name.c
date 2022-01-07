
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seqno_fence {TYPE_1__* ops; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {char const* (* get_timeline_name ) (struct dma_fence*) ;} ;


 char const* stub1 (struct dma_fence*) ;
 struct seqno_fence* to_seqno_fence (struct dma_fence*) ;

__attribute__((used)) static const char *seqno_fence_get_timeline_name(struct dma_fence *fence)
{
 struct seqno_fence *seqno_fence = to_seqno_fence(fence);

 return seqno_fence->ops->get_timeline_name(fence);
}
