
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct skl_plane_wm {scalar_t__ is_planar; int trans_wm; int * wm; } ;
struct skl_ddb_entry {int dummy; } ;
struct TYPE_5__ {int dev; } ;
struct intel_plane {int id; int pipe; TYPE_1__ base; } ;
struct TYPE_6__ {struct skl_plane_wm* planes; } ;
struct TYPE_7__ {struct skl_ddb_entry* plane_ddb_uv; struct skl_ddb_entry* plane_ddb_y; TYPE_2__ optimal; } ;
struct TYPE_8__ {TYPE_3__ skl; } ;
struct intel_crtc_state {TYPE_4__ wm; } ;
struct drm_i915_private {int dummy; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int PLANE_BUF_CFG (int,int) ;
 int PLANE_NV12_BUF_CFG (int,int) ;
 int PLANE_WM (int,int,int) ;
 int PLANE_WM_TRANS (int,int) ;
 int ilk_wm_max_level (struct drm_i915_private*) ;
 int skl_ddb_entry_write (struct drm_i915_private*,int ,struct skl_ddb_entry const*) ;
 int skl_write_wm_level (struct drm_i915_private*,int ,int *) ;
 int swap (struct skl_ddb_entry const*,struct skl_ddb_entry const*) ;
 struct drm_i915_private* to_i915 (int ) ;

void skl_write_plane_wm(struct intel_plane *plane,
   const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 int level, max_level = ilk_wm_max_level(dev_priv);
 enum plane_id plane_id = plane->id;
 enum pipe pipe = plane->pipe;
 const struct skl_plane_wm *wm =
  &crtc_state->wm.skl.optimal.planes[plane_id];
 const struct skl_ddb_entry *ddb_y =
  &crtc_state->wm.skl.plane_ddb_y[plane_id];
 const struct skl_ddb_entry *ddb_uv =
  &crtc_state->wm.skl.plane_ddb_uv[plane_id];

 for (level = 0; level <= max_level; level++) {
  skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
       &wm->wm[level]);
 }
 skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
      &wm->trans_wm);

 if (INTEL_GEN(dev_priv) >= 11) {
  skl_ddb_entry_write(dev_priv,
        PLANE_BUF_CFG(pipe, plane_id), ddb_y);
  return;
 }

 if (wm->is_planar)
  swap(ddb_y, ddb_uv);

 skl_ddb_entry_write(dev_priv,
       PLANE_BUF_CFG(pipe, plane_id), ddb_y);
 skl_ddb_entry_write(dev_priv,
       PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_uv);
}
