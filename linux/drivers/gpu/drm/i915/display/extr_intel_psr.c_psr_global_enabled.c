
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int enable_psr; } ;




 int I915_PSR_DEBUG_MODE_MASK ;
 TYPE_1__ i915_modparams ;

__attribute__((used)) static bool psr_global_enabled(u32 debug)
{
 switch (debug & I915_PSR_DEBUG_MODE_MASK) {
 case 129:
  return i915_modparams.enable_psr;
 case 128:
  return 0;
 default:
  return 1;
 }
}
