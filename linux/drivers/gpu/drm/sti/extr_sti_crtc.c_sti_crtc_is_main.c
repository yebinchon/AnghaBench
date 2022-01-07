
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_mixer {scalar_t__ id; } ;
struct drm_crtc {int dummy; } ;


 scalar_t__ STI_MIXER_MAIN ;
 struct sti_mixer* to_sti_mixer (struct drm_crtc*) ;

bool sti_crtc_is_main(struct drm_crtc *crtc)
{
 struct sti_mixer *mixer = to_sti_mixer(crtc);

 if (mixer->id == STI_MIXER_MAIN)
  return 1;

 return 0;
}
