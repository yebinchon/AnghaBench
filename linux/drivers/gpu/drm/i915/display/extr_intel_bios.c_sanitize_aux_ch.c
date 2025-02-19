
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ddi_vbt_port_info* ddi_port_info; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct ddi_vbt_port_info {int supports_dp; scalar_t__ alternate_aux_channel; } ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_DEBUG_KMS (char*,int ,scalar_t__,int ,int ) ;
 int PORT_NONE ;
 int get_port_by_aux_ch (struct drm_i915_private*,scalar_t__) ;
 int port_name (int) ;

__attribute__((used)) static void sanitize_aux_ch(struct drm_i915_private *dev_priv,
       enum port port)
{
 struct ddi_vbt_port_info *info = &dev_priv->vbt.ddi_port_info[port];
 enum port p;

 if (!info->alternate_aux_channel)
  return;

 p = get_port_by_aux_ch(dev_priv, info->alternate_aux_channel);
 if (p != PORT_NONE) {
  DRM_DEBUG_KMS("port %c trying to use the same AUX CH (0x%x) as port %c, "
         "disabling port %c DP support\n",
         port_name(port), info->alternate_aux_channel,
         port_name(p), port_name(p));
  info = &dev_priv->vbt.ddi_port_info[p];

  info->supports_dp = 0;
  info->alternate_aux_channel = 0;
 }
}
