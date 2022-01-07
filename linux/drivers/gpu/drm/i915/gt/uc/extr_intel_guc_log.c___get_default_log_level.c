
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_guc_log {int dummy; } ;
struct TYPE_2__ {scalar_t__ guc_log_level; } ;


 int CONFIG_DRM_I915_DEBUG ;
 int CONFIG_DRM_I915_DEBUG_GEM ;
 int DRM_WARN (char*,char*,scalar_t__,char*) ;
 int GEM_BUG_ON (int) ;
 scalar_t__ GUC_LOG_LEVEL_DISABLED ;
 scalar_t__ GUC_LOG_LEVEL_MAX ;
 scalar_t__ GUC_LOG_LEVEL_NON_VERBOSE ;
 scalar_t__ IS_ENABLED (int ) ;
 TYPE_1__ i915_modparams ;

__attribute__((used)) static u32 __get_default_log_level(struct intel_guc_log *log)
{

 if (i915_modparams.guc_log_level < 0) {
  return (IS_ENABLED(CONFIG_DRM_I915_DEBUG) ||
   IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) ?
   GUC_LOG_LEVEL_MAX : GUC_LOG_LEVEL_NON_VERBOSE;
 }

 if (i915_modparams.guc_log_level > GUC_LOG_LEVEL_MAX) {
  DRM_WARN("Incompatible option detected: %s=%d, %s!\n",
    "guc_log_level", i915_modparams.guc_log_level,
    "verbosity too high");
  return (IS_ENABLED(CONFIG_DRM_I915_DEBUG) ||
   IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) ?
   GUC_LOG_LEVEL_MAX : GUC_LOG_LEVEL_DISABLED;
 }

 GEM_BUG_ON(i915_modparams.guc_log_level < GUC_LOG_LEVEL_DISABLED);
 GEM_BUG_ON(i915_modparams.guc_log_level > GUC_LOG_LEVEL_MAX);
 return i915_modparams.guc_log_level;
}
