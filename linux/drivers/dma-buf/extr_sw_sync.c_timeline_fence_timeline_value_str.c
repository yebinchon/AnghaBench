
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {int value; } ;
struct dma_fence {int dummy; } ;


 struct sync_timeline* dma_fence_parent (struct dma_fence*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void timeline_fence_timeline_value_str(struct dma_fence *fence,
          char *str, int size)
{
 struct sync_timeline *parent = dma_fence_parent(fence);

 snprintf(str, size, "%d", parent->value);
}
