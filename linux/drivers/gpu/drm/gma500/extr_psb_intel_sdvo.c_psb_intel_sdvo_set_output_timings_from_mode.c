
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo_dtd {int dummy; } ;
struct psb_intel_sdvo {int attached_output; } ;
struct drm_display_mode {int dummy; } ;


 int psb_intel_sdvo_get_dtd_from_mode (struct psb_intel_sdvo_dtd*,struct drm_display_mode const*) ;
 int psb_intel_sdvo_set_output_timing (struct psb_intel_sdvo*,struct psb_intel_sdvo_dtd*) ;
 int psb_intel_sdvo_set_target_output (struct psb_intel_sdvo*,int ) ;

__attribute__((used)) static bool
psb_intel_sdvo_set_output_timings_from_mode(struct psb_intel_sdvo *psb_intel_sdvo,
     const struct drm_display_mode *mode)
{
 struct psb_intel_sdvo_dtd output_dtd;

 if (!psb_intel_sdvo_set_target_output(psb_intel_sdvo,
       psb_intel_sdvo->attached_output))
  return 0;

 psb_intel_sdvo_get_dtd_from_mode(&output_dtd, mode);
 if (!psb_intel_sdvo_set_output_timing(psb_intel_sdvo, &output_dtd))
  return 0;

 return 1;
}
