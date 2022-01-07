
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo {int input_dtd; } ;
struct drm_display_mode {int clock; int vdisplay; int hdisplay; } ;


 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 int psb_intel_sdvo_create_preferred_input_timing (struct psb_intel_sdvo*,int,int ,int ) ;
 int psb_intel_sdvo_get_mode_from_dtd (struct drm_display_mode*,int *) ;
 int psb_intel_sdvo_get_preferred_input_timing (struct psb_intel_sdvo*,int *) ;
 int psb_intel_sdvo_set_target_input (struct psb_intel_sdvo*) ;

__attribute__((used)) static bool
psb_intel_sdvo_set_input_timings_for_mode(struct psb_intel_sdvo *psb_intel_sdvo,
     const struct drm_display_mode *mode,
     struct drm_display_mode *adjusted_mode)
{

 if (!psb_intel_sdvo_set_target_input(psb_intel_sdvo))
  return 0;

 if (!psb_intel_sdvo_create_preferred_input_timing(psb_intel_sdvo,
            mode->clock / 10,
            mode->hdisplay,
            mode->vdisplay))
  return 0;

 if (!psb_intel_sdvo_get_preferred_input_timing(psb_intel_sdvo,
         &psb_intel_sdvo->input_dtd))
  return 0;

 psb_intel_sdvo_get_mode_from_dtd(adjusted_mode, &psb_intel_sdvo->input_dtd);

 drm_mode_set_crtcinfo(adjusted_mode, 0);
 return 1;
}
