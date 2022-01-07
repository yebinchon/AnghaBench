
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {char const* name; } ;
struct dma_fence {int dummy; } ;


 struct sync_timeline* dma_fence_parent (struct dma_fence*) ;

__attribute__((used)) static const char *timeline_fence_get_timeline_name(struct dma_fence *fence)
{
 struct sync_timeline *parent = dma_fence_parent(fence);

 return parent->name;
}
