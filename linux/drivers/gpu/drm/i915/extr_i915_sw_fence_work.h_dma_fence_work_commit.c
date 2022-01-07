
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence_work {int chain; } ;


 int i915_sw_fence_commit (int *) ;

__attribute__((used)) static inline void dma_fence_work_commit(struct dma_fence_work *f)
{
 i915_sw_fence_commit(&f->chain);
}
