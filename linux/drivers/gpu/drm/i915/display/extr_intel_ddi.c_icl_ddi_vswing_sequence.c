
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;
typedef enum intel_output_type { ____Placeholder_intel_output_type } intel_output_type ;


 int icl_combo_phy_ddi_vswing_sequence (struct intel_encoder*,int ,int) ;
 int icl_mg_phy_ddi_vswing_sequence (struct intel_encoder*,int,int ) ;
 scalar_t__ intel_phy_is_combo (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void icl_ddi_vswing_sequence(struct intel_encoder *encoder,
        int link_clock,
        u32 level,
        enum intel_output_type type)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum phy phy = intel_port_to_phy(dev_priv, encoder->port);

 if (intel_phy_is_combo(dev_priv, phy))
  icl_combo_phy_ddi_vswing_sequence(encoder, level, type);
 else
  icl_mg_phy_ddi_vswing_sequence(encoder, link_clock, level);
}
