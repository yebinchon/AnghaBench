
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_fence {int dummy; } ;
struct dma_fence {int dummy; } ;



__attribute__((used)) static inline struct panfrost_fence *
to_panfrost_fence(struct dma_fence *fence)
{
 return (struct panfrost_fence *)fence;
}
