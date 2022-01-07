
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_dual_link; } ;


 struct intel_encoder* intel_get_lvds_encoder (struct drm_i915_private*) ;
 TYPE_1__* to_lvds_encoder (int *) ;

bool intel_is_dual_link_lvds(struct drm_i915_private *dev_priv)
{
 struct intel_encoder *encoder = intel_get_lvds_encoder(dev_priv);

 return encoder && to_lvds_encoder(&encoder->base)->is_dual_link;
}
