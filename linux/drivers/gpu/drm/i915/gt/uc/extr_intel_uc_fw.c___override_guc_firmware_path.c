
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable_guc; char const* guc_firmware_path; } ;


 int ENABLE_GUC_LOAD_HUC ;
 int ENABLE_GUC_SUBMISSION ;
 TYPE_1__ i915_modparams ;

__attribute__((used)) static const char *__override_guc_firmware_path(void)
{
 if (i915_modparams.enable_guc & (ENABLE_GUC_SUBMISSION |
      ENABLE_GUC_LOAD_HUC))
  return i915_modparams.guc_firmware_path;
 return "";
}
