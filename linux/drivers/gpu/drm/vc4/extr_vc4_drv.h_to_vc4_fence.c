
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_fence {int dummy; } ;
struct dma_fence {int dummy; } ;



__attribute__((used)) static inline struct vc4_fence *
to_vc4_fence(struct dma_fence *fence)
{
 return (struct vc4_fence *)fence;
}
