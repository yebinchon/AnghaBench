
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;



__attribute__((used)) static const char *vc4_fence_get_timeline_name(struct dma_fence *fence)
{
 return "vc4-v3d";
}
