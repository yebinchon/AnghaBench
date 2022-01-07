
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct drm_i915_private {int uncore; } ;


 int TR1 ;
 int TSFS ;
 unsigned long TSFS_INTR_MASK ;
 unsigned long TSFS_SLOPE_MASK ;
 unsigned long TSFS_SLOPE_SHIFT ;
 unsigned long intel_uncore_read (int *,int ) ;
 unsigned long intel_uncore_read8 (int *,int ) ;

unsigned long i915_mch_val(struct drm_i915_private *i915)
{
 unsigned long m, x, b;
 u32 tsfs;

 tsfs = intel_uncore_read(&i915->uncore, TSFS);

 m = ((tsfs & TSFS_SLOPE_MASK) >> TSFS_SLOPE_SHIFT);
 x = intel_uncore_read8(&i915->uncore, TR1);

 b = tsfs & TSFS_INTR_MASK;

 return ((m * x) / 127) - b;
}
