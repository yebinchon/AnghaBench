
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;



__attribute__((used)) static const char *dma_fence_array_get_timeline_name(struct dma_fence *fence)
{
 return "unbound";
}
