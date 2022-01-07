
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int dummy; } ;
struct drm_i915_private {struct intel_crtc** plane_to_crtc_mapping; } ;
typedef enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;



__attribute__((used)) static inline struct intel_crtc *
intel_get_crtc_for_plane(struct drm_i915_private *dev_priv, enum i9xx_plane_id plane)
{
 return dev_priv->plane_to_crtc_mapping[plane];
}
