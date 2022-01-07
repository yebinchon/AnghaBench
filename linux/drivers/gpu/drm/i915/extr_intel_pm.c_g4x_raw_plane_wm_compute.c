
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int plane; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct TYPE_6__ {int name; int dev; } ;
struct intel_plane {int id; TYPE_2__ base; } ;
struct TYPE_7__ {struct g4x_pipe_wm* raw; } ;
struct TYPE_8__ {TYPE_3__ g4x; } ;
struct intel_crtc_state {TYPE_4__ wm; } ;
struct g4x_pipe_wm {int* plane; int fbc; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;


 int DRM_DEBUG_KMS (char*,int,int,...) ;
 size_t G4X_WM_LEVEL_HPLL ;
 int G4X_WM_LEVEL_NORMAL ;
 size_t G4X_WM_LEVEL_SR ;
 int PLANE_PRIMARY ;
 int USHRT_MAX ;
 int g4x_compute_wm (struct intel_crtc_state*,struct intel_plane_state const*,int) ;
 int g4x_fbc_fifo_size (int) ;
 int g4x_plane_fifo_size (int,int) ;
 int g4x_raw_fbc_wm_set (struct intel_crtc_state*,int,int) ;
 int g4x_raw_plane_wm_set (struct intel_crtc_state*,int,int,int) ;
 int ilk_compute_fbc_wm (struct intel_crtc_state*,struct intel_plane_state const*,int) ;
 int intel_wm_num_levels (int ) ;
 int intel_wm_plane_visible (struct intel_crtc_state*,struct intel_plane_state const*) ;
 int to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
         const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 int num_levels = intel_wm_num_levels(to_i915(plane->base.dev));
 enum plane_id plane_id = plane->id;
 bool dirty = 0;
 int level;

 if (!intel_wm_plane_visible(crtc_state, plane_state)) {
  dirty |= g4x_raw_plane_wm_set(crtc_state, 0, plane_id, 0);
  if (plane_id == PLANE_PRIMARY)
   dirty |= g4x_raw_fbc_wm_set(crtc_state, 0, 0);
  goto out;
 }

 for (level = 0; level < num_levels; level++) {
  struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
  int wm, max_wm;

  wm = g4x_compute_wm(crtc_state, plane_state, level);
  max_wm = g4x_plane_fifo_size(plane_id, level);

  if (wm > max_wm)
   break;

  dirty |= raw->plane[plane_id] != wm;
  raw->plane[plane_id] = wm;

  if (plane_id != PLANE_PRIMARY ||
      level == G4X_WM_LEVEL_NORMAL)
   continue;

  wm = ilk_compute_fbc_wm(crtc_state, plane_state,
     raw->plane[plane_id]);
  max_wm = g4x_fbc_fifo_size(level);





  if (wm > max_wm)
   wm = USHRT_MAX;

  dirty |= raw->fbc != wm;
  raw->fbc = wm;
 }


 dirty |= g4x_raw_plane_wm_set(crtc_state, level, plane_id, USHRT_MAX);

 if (plane_id == PLANE_PRIMARY)
  dirty |= g4x_raw_fbc_wm_set(crtc_state, level, USHRT_MAX);

 out:
 if (dirty) {
  DRM_DEBUG_KMS("%s watermarks: normal=%d, SR=%d, HPLL=%d\n",
         plane->base.name,
         crtc_state->wm.g4x.raw[G4X_WM_LEVEL_NORMAL].plane[plane_id],
         crtc_state->wm.g4x.raw[G4X_WM_LEVEL_SR].plane[plane_id],
         crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].plane[plane_id]);

  if (plane_id == PLANE_PRIMARY)
   DRM_DEBUG_KMS("FBC watermarks: SR=%d, HPLL=%d\n",
          crtc_state->wm.g4x.raw[G4X_WM_LEVEL_SR].fbc,
          crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].fbc);
 }

 return dirty;
}
