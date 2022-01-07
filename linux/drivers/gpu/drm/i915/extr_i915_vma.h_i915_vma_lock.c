
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int resv; } ;


 int dma_resv_lock (int ,int *) ;

__attribute__((used)) static inline void i915_vma_lock(struct i915_vma *vma)
{
 dma_resv_lock(vma->resv, ((void*)0));
}
