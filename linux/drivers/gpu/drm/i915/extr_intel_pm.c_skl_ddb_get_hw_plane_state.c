
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skl_ddb_entry {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int CUR_BUF_CFG (int const) ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int PLANE_BUF_CFG (int const,int const) ;
 int PLANE_CTL (int const,int const) ;
 int PLANE_CTL_ALPHA_MASK ;
 int PLANE_CTL_ENABLE ;
 int PLANE_CTL_FORMAT_MASK ;
 int PLANE_CTL_ORDER_RGBX ;
 int const PLANE_CURSOR ;
 int PLANE_NV12_BUF_CFG (int const,int const) ;
 scalar_t__ is_planar_yuv_format (int) ;
 int skl_ddb_entry_init_from_hw (struct drm_i915_private*,struct skl_ddb_entry*,int) ;
 int skl_format_to_fourcc (int,int,int) ;
 int swap (int,int) ;

__attribute__((used)) static void
skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
      const enum pipe pipe,
      const enum plane_id plane_id,
      struct skl_ddb_entry *ddb_y,
      struct skl_ddb_entry *ddb_uv)
{
 u32 val, val2;
 u32 fourcc = 0;


 if (plane_id == PLANE_CURSOR) {
  val = I915_READ(CUR_BUF_CFG(pipe));
  skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
  return;
 }

 val = I915_READ(PLANE_CTL(pipe, plane_id));


 if (val & PLANE_CTL_ENABLE)
  fourcc = skl_format_to_fourcc(val & PLANE_CTL_FORMAT_MASK,
           val & PLANE_CTL_ORDER_RGBX,
           val & PLANE_CTL_ALPHA_MASK);

 if (INTEL_GEN(dev_priv) >= 11) {
  val = I915_READ(PLANE_BUF_CFG(pipe, plane_id));
  skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
 } else {
  val = I915_READ(PLANE_BUF_CFG(pipe, plane_id));
  val2 = I915_READ(PLANE_NV12_BUF_CFG(pipe, plane_id));

  if (is_planar_yuv_format(fourcc))
   swap(val, val2);

  skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
  skl_ddb_entry_init_from_hw(dev_priv, ddb_uv, val2);
 }
}
