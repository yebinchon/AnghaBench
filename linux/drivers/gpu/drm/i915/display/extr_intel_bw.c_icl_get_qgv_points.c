
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_qgv_point {int t_rc; int t_rcd; int t_ras; int t_rdpre; int t_rp; int dclk; } ;
struct intel_qgv_info {int num_points; struct intel_qgv_point* points; } ;
struct drm_i915_private {int dummy; } ;


 int ARRAY_SIZE (struct intel_qgv_point*) ;
 int DRM_DEBUG_KMS (char*,int,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ WARN_ON (int) ;
 int icl_pcode_read_mem_global_info (struct drm_i915_private*,struct intel_qgv_info*) ;
 int icl_pcode_read_qgv_point_info (struct drm_i915_private*,struct intel_qgv_point*,int) ;

__attribute__((used)) static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
         struct intel_qgv_info *qi)
{
 int i, ret;

 ret = icl_pcode_read_mem_global_info(dev_priv, qi);
 if (ret)
  return ret;

 if (WARN_ON(qi->num_points > ARRAY_SIZE(qi->points)))
  qi->num_points = ARRAY_SIZE(qi->points);

 for (i = 0; i < qi->num_points; i++) {
  struct intel_qgv_point *sp = &qi->points[i];

  ret = icl_pcode_read_qgv_point_info(dev_priv, sp, i);
  if (ret)
   return ret;

  DRM_DEBUG_KMS("QGV %d: DCLK=%d tRP=%d tRDPRE=%d tRAS=%d tRCD=%d tRC=%d\n",
         i, sp->dclk, sp->t_rp, sp->t_rdpre, sp->t_ras,
         sp->t_rcd, sp->t_rc);
 }

 return 0;
}
