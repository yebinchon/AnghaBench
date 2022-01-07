
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ddi_vbt_port_info* ddi_port_info; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct ddi_vbt_port_info {int alternate_aux_channel; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum aux_ch { ____Placeholder_aux_ch } aux_ch ;


 int AUX_CH_A ;
 int AUX_CH_B ;
 int AUX_CH_C ;
 int AUX_CH_D ;
 int AUX_CH_E ;
 int AUX_CH_F ;






 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int MISSING_CASE (int) ;
 int aux_ch_name (int) ;
 int port_name (int) ;

enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
       enum port port)
{
 const struct ddi_vbt_port_info *info =
  &dev_priv->vbt.ddi_port_info[port];
 enum aux_ch aux_ch;

 if (!info->alternate_aux_channel) {
  aux_ch = (enum aux_ch)port;

  DRM_DEBUG_KMS("using AUX %c for port %c (platform default)\n",
         aux_ch_name(aux_ch), port_name(port));
  return aux_ch;
 }

 switch (info->alternate_aux_channel) {
 case 133:
  aux_ch = AUX_CH_A;
  break;
 case 132:
  aux_ch = AUX_CH_B;
  break;
 case 131:
  aux_ch = AUX_CH_C;
  break;
 case 130:
  aux_ch = AUX_CH_D;
  break;
 case 129:
  aux_ch = AUX_CH_E;
  break;
 case 128:
  aux_ch = AUX_CH_F;
  break;
 default:
  MISSING_CASE(info->alternate_aux_channel);
  aux_ch = AUX_CH_A;
  break;
 }

 DRM_DEBUG_KMS("using AUX %c for port %c (VBT)\n",
        aux_ch_name(aux_ch), port_name(port));

 return aux_ch;
}
