
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_fence {int queue; } ;
struct dma_fence {int dummy; } ;






 struct v3d_fence* to_v3d_fence (struct dma_fence*) ;

__attribute__((used)) static const char *v3d_fence_get_timeline_name(struct dma_fence *fence)
{
 struct v3d_fence *f = to_v3d_fence(fence);

 switch (f->queue) {
 case 131:
  return "v3d-bin";
 case 129:
  return "v3d-render";
 case 128:
  return "v3d-tfu";
 case 130:
  return "v3d-csd";
 default:
  return ((void*)0);
 }
}
