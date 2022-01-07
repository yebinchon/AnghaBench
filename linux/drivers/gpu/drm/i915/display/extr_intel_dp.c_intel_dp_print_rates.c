
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int num_common_rates; int common_rates; int num_sink_rates; int sink_rates; int num_source_rates; int source_rates; } ;
typedef int str ;


 int DRM_DEBUG_KMS (char*,char*) ;
 int DRM_UT_KMS ;
 int drm_debug ;
 int snprintf_int_array (char*,int,int ,int ) ;

__attribute__((used)) static void intel_dp_print_rates(struct intel_dp *intel_dp)
{
 char str[128];

 if ((drm_debug & DRM_UT_KMS) == 0)
  return;

 snprintf_int_array(str, sizeof(str),
      intel_dp->source_rates, intel_dp->num_source_rates);
 DRM_DEBUG_KMS("source rates: %s\n", str);

 snprintf_int_array(str, sizeof(str),
      intel_dp->sink_rates, intel_dp->num_sink_rates);
 DRM_DEBUG_KMS("sink rates: %s\n", str);

 snprintf_int_array(str, sizeof(str),
      intel_dp->common_rates, intel_dp->num_common_rates);
 DRM_DEBUG_KMS("common rates: %s\n", str);
}
