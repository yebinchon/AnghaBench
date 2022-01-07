
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int log; } ;


 int GUC_LOG_DISABLED ;
 int GUC_LOG_LEVEL_IS_VERBOSE (int) ;
 int GUC_LOG_LEVEL_TO_VERBOSITY (int) ;
 int GUC_LOG_VERBOSITY_SHIFT ;
 int intel_guc_log_get_level (int *) ;

__attribute__((used)) static u32 guc_ctl_debug_flags(struct intel_guc *guc)
{
 u32 level = intel_guc_log_get_level(&guc->log);
 u32 flags = 0;

 if (!GUC_LOG_LEVEL_IS_VERBOSE(level))
  flags |= GUC_LOG_DISABLED;
 else
  flags |= GUC_LOG_LEVEL_TO_VERBOSITY(level) <<
    GUC_LOG_VERBOSITY_SHIFT;

 return flags;
}
