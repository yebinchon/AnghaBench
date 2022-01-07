
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gpu_state {unsigned long capture; struct drm_i915_error_engine* engine; } ;
struct drm_i915_error_engine {unsigned long hangcheck_timestamp; struct drm_i915_error_engine* next; } ;


 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long capture_find_epoch(const struct i915_gpu_state *error)
{
 const struct drm_i915_error_engine *ee;
 unsigned long epoch = error->capture;

 for (ee = error->engine; ee; ee = ee->next) {
  if (ee->hangcheck_timestamp &&
      time_before(ee->hangcheck_timestamp, epoch))
   epoch = ee->hangcheck_timestamp;
 }

 return epoch;
}
