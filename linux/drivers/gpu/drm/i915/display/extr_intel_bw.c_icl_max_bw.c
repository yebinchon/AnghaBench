
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_bw_info {int num_qgv_points; int num_planes; unsigned int* deratedbw; } ;
struct drm_i915_private {struct intel_bw_info* max_bw; } ;


 int ARRAY_SIZE (struct intel_bw_info*) ;
 unsigned int UINT_MAX ;

__attribute__((used)) static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
          int num_planes, int qgv_point)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dev_priv->max_bw); i++) {
  const struct intel_bw_info *bi =
   &dev_priv->max_bw[i];





  if (qgv_point >= bi->num_qgv_points)
   return UINT_MAX;

  if (num_planes >= bi->num_planes)
   return bi->deratedbw[qgv_point];
 }

 return 0;
}
