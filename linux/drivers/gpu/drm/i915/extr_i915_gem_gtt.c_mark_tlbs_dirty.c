
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ppgtt {int pd_dirty_engines; } ;


 int ALL_ENGINES ;

__attribute__((used)) static void mark_tlbs_dirty(struct i915_ppgtt *ppgtt)
{
 ppgtt->pd_dirty_engines = ALL_ENGINES;
}
