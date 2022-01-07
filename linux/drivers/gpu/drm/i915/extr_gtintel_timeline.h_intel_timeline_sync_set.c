
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int dummy; } ;
struct dma_fence {int seqno; int context; } ;


 int __intel_timeline_sync_set (struct intel_timeline*,int ,int ) ;

__attribute__((used)) static inline int intel_timeline_sync_set(struct intel_timeline *tl,
       const struct dma_fence *fence)
{
 return __intel_timeline_sync_set(tl, fence->context, fence->seqno);
}
