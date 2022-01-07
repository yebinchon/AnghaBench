
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int resv; } ;


 int dma_resv_unlock (int ) ;

__attribute__((used)) static inline void i915_vma_unlock(struct i915_vma *vma)
{
 dma_resv_unlock(vma->resv);
}
