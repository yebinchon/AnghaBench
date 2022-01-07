
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct skl_wm_params {int dummy; } ;
struct skl_plane_wm {int wm; } ;
struct intel_plane_state {int dummy; } ;
struct TYPE_4__ {struct skl_plane_wm* planes; } ;
struct TYPE_5__ {TYPE_1__ optimal; } ;
struct TYPE_6__ {TYPE_2__ skl; } ;
struct intel_crtc_state {TYPE_3__ wm; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;


 int skl_compute_plane_wm_params (struct intel_crtc_state*,struct intel_plane_state const*,struct skl_wm_params*,int) ;
 int skl_compute_transition_wm (struct intel_crtc_state*,struct skl_wm_params*,struct skl_plane_wm*) ;
 int skl_compute_wm_levels (struct intel_crtc_state*,struct skl_wm_params*,int ) ;

__attribute__((used)) static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
         const struct intel_plane_state *plane_state,
         enum plane_id plane_id, int color_plane)
{
 struct skl_plane_wm *wm = &crtc_state->wm.skl.optimal.planes[plane_id];
 struct skl_wm_params wm_params;
 int ret;

 ret = skl_compute_plane_wm_params(crtc_state, plane_state,
       &wm_params, color_plane);
 if (ret)
  return ret;

 skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
 skl_compute_transition_wm(crtc_state, &wm_params, wm);

 return 0;
}
