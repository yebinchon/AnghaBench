
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_fence {int dummy; } ;
struct dma_fence {int dummy; } ;



__attribute__((used)) static inline struct v3d_fence *
to_v3d_fence(struct dma_fence *fence)
{
 return (struct v3d_fence *)fence;
}
