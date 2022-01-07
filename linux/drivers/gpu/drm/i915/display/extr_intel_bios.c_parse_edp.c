
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct edp_power_seq {int dummy; } ;
struct edp_fast_link_params {int rate; int lanes; int preemphasis; int vswing; } ;
struct TYPE_4__ {int bpp; int lanes; int low_vswing; int vswing; int preemphasis; int rate; struct edp_power_seq pps; } ;
struct TYPE_5__ {int panel_type; TYPE_1__ edp; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct bdb_header {int version; } ;
struct bdb_edp {int color_depth; int edp_vswing_preemph; struct edp_fast_link_params* fast_link_params; struct edp_power_seq* power_seqs; } ;
struct TYPE_6__ {int edp_vswing; } ;


 int BDB_EDP ;
 int DP_LINK_BW_1_62 ;
 int DP_LINK_BW_2_7 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_0 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_1 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_2 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_3 ;
 int DP_TRAIN_VOLTAGE_SWING_LEVEL_0 ;
 int DP_TRAIN_VOLTAGE_SWING_LEVEL_1 ;
 int DP_TRAIN_VOLTAGE_SWING_LEVEL_2 ;
 int DP_TRAIN_VOLTAGE_SWING_LEVEL_3 ;
 int DRM_DEBUG_KMS (char*,int) ;
 struct bdb_edp* find_section (struct bdb_header const*,int ) ;
 TYPE_3__ i915_modparams ;

__attribute__((used)) static void
parse_edp(struct drm_i915_private *dev_priv, const struct bdb_header *bdb)
{
 const struct bdb_edp *edp;
 const struct edp_power_seq *edp_pps;
 const struct edp_fast_link_params *edp_link_params;
 int panel_type = dev_priv->vbt.panel_type;

 edp = find_section(bdb, BDB_EDP);
 if (!edp)
  return;

 switch ((edp->color_depth >> (panel_type * 2)) & 3) {
 case 143:
  dev_priv->vbt.edp.bpp = 18;
  break;
 case 142:
  dev_priv->vbt.edp.bpp = 24;
  break;
 case 141:
  dev_priv->vbt.edp.bpp = 30;
  break;
 }


 edp_pps = &edp->power_seqs[panel_type];
 edp_link_params = &edp->fast_link_params[panel_type];

 dev_priv->vbt.edp.pps = *edp_pps;

 switch (edp_link_params->rate) {
 case 133:
  dev_priv->vbt.edp.rate = DP_LINK_BW_1_62;
  break;
 case 132:
  dev_priv->vbt.edp.rate = DP_LINK_BW_2_7;
  break;
 default:
  DRM_DEBUG_KMS("VBT has unknown eDP link rate value %u\n",
         edp_link_params->rate);
  break;
 }

 switch (edp_link_params->lanes) {
 case 140:
  dev_priv->vbt.edp.lanes = 1;
  break;
 case 139:
  dev_priv->vbt.edp.lanes = 2;
  break;
 case 138:
  dev_priv->vbt.edp.lanes = 4;
  break;
 default:
  DRM_DEBUG_KMS("VBT has unknown eDP lane count value %u\n",
         edp_link_params->lanes);
  break;
 }

 switch (edp_link_params->preemphasis) {
 case 134:
  dev_priv->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_0;
  break;
 case 137:
  dev_priv->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_1;
  break;
 case 136:
  dev_priv->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_2;
  break;
 case 135:
  dev_priv->vbt.edp.preemphasis = DP_TRAIN_PRE_EMPH_LEVEL_3;
  break;
 default:
  DRM_DEBUG_KMS("VBT has unknown eDP pre-emphasis value %u\n",
         edp_link_params->preemphasis);
  break;
 }

 switch (edp_link_params->vswing) {
 case 131:
  dev_priv->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_0;
  break;
 case 130:
  dev_priv->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_1;
  break;
 case 129:
  dev_priv->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
  break;
 case 128:
  dev_priv->vbt.edp.vswing = DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
  break;
 default:
  DRM_DEBUG_KMS("VBT has unknown eDP voltage swing value %u\n",
         edp_link_params->vswing);
  break;
 }

 if (bdb->version >= 173) {
  u8 vswing;


  if (i915_modparams.edp_vswing) {
   dev_priv->vbt.edp.low_vswing =
    i915_modparams.edp_vswing == 1;
  } else {
   vswing = (edp->edp_vswing_preemph >> (panel_type * 4)) & 0xF;
   dev_priv->vbt.edp.low_vswing = vswing == 0;
  }
 }
}
