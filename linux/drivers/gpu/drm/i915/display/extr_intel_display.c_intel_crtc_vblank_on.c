
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {int base; } ;


 int drm_crtc_set_max_vblank_count (int *,int ) ;
 int drm_crtc_vblank_on (int *) ;
 int intel_crtc_max_vblank_count (struct intel_crtc_state const*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);

 drm_crtc_set_max_vblank_count(&crtc->base,
          intel_crtc_max_vblank_count(crtc_state));
 drm_crtc_vblank_on(&crtc->base);
}
