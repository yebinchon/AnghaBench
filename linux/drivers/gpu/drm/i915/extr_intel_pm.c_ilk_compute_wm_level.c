
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct intel_wm_level {int enable; int cur_val; int spr_val; int pri_val; int fbc_val; } ;
struct intel_plane_state {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct intel_crtc {int dummy; } ;
struct TYPE_2__ {int* pri_latency; int* spr_latency; int* cur_latency; } ;
struct drm_i915_private {TYPE_1__ wm; } ;


 int ilk_compute_cur_wm (struct intel_crtc_state*,struct intel_plane_state const*,int) ;
 int ilk_compute_fbc_wm (struct intel_crtc_state*,struct intel_plane_state const*,int ) ;
 int ilk_compute_pri_wm (struct intel_crtc_state*,struct intel_plane_state const*,int,int) ;
 int ilk_compute_spr_wm (struct intel_crtc_state*,struct intel_plane_state const*,int) ;

__attribute__((used)) static void ilk_compute_wm_level(const struct drm_i915_private *dev_priv,
     const struct intel_crtc *intel_crtc,
     int level,
     struct intel_crtc_state *crtc_state,
     const struct intel_plane_state *pristate,
     const struct intel_plane_state *sprstate,
     const struct intel_plane_state *curstate,
     struct intel_wm_level *result)
{
 u16 pri_latency = dev_priv->wm.pri_latency[level];
 u16 spr_latency = dev_priv->wm.spr_latency[level];
 u16 cur_latency = dev_priv->wm.cur_latency[level];


 if (level > 0) {
  pri_latency *= 5;
  spr_latency *= 5;
  cur_latency *= 5;
 }

 if (pristate) {
  result->pri_val = ilk_compute_pri_wm(crtc_state, pristate,
           pri_latency, level);
  result->fbc_val = ilk_compute_fbc_wm(crtc_state, pristate, result->pri_val);
 }

 if (sprstate)
  result->spr_val = ilk_compute_spr_wm(crtc_state, sprstate, spr_latency);

 if (curstate)
  result->cur_val = ilk_compute_cur_wm(crtc_state, curstate, cur_latency);

 result->enable = 1;
}
