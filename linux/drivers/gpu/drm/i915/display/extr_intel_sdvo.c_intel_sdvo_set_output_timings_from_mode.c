
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_dtd {int dummy; } ;
struct intel_sdvo {int attached_output; } ;
struct drm_display_mode {int dummy; } ;


 int intel_sdvo_get_dtd_from_mode (struct intel_sdvo_dtd*,struct drm_display_mode const*) ;
 int intel_sdvo_set_output_timing (struct intel_sdvo*,struct intel_sdvo_dtd*) ;
 int intel_sdvo_set_target_output (struct intel_sdvo*,int ) ;

__attribute__((used)) static bool
intel_sdvo_set_output_timings_from_mode(struct intel_sdvo *intel_sdvo,
     const struct drm_display_mode *mode)
{
 struct intel_sdvo_dtd output_dtd;

 if (!intel_sdvo_set_target_output(intel_sdvo,
       intel_sdvo->attached_output))
  return 0;

 intel_sdvo_get_dtd_from_mode(&output_dtd, mode);
 if (!intel_sdvo_set_output_timing(intel_sdvo, &output_dtd))
  return 0;

 return 1;
}
