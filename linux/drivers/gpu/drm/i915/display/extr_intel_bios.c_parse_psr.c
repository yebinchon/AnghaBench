
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct psr_table {int idle_frames; int lines_to_wait; int tp1_wakeup_time; int tp2_tp3_wakeup_time; int require_aux_to_wakeup; int full_link; } ;
struct TYPE_3__ {int idle_frames; int tp1_wakeup_time_us; int tp2_tp3_wakeup_time_us; int psr2_tp2_tp3_wakeup_time_us; int lines_to_wait; int require_aux_wakeup; int full_link; } ;
struct TYPE_4__ {int panel_type; TYPE_1__ psr; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct bdb_psr {int psr2_tp2_tp3_wakeup_time; struct psr_table* psr_table; } ;
struct bdb_header {int version; } ;


 int BDB_PSR ;
 int DRM_DEBUG_KMS (char*,...) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 int PSR_0_LINES_TO_WAIT ;
 int PSR_1_LINE_TO_WAIT ;
 int PSR_4_LINES_TO_WAIT ;
 int PSR_8_LINES_TO_WAIT ;
 struct bdb_psr* find_section (struct bdb_header const*,int ) ;

__attribute__((used)) static void
parse_psr(struct drm_i915_private *dev_priv, const struct bdb_header *bdb)
{
 const struct bdb_psr *psr;
 const struct psr_table *psr_table;
 int panel_type = dev_priv->vbt.panel_type;

 psr = find_section(bdb, BDB_PSR);
 if (!psr) {
  DRM_DEBUG_KMS("No PSR BDB found.\n");
  return;
 }

 psr_table = &psr->psr_table[panel_type];

 dev_priv->vbt.psr.full_link = psr_table->full_link;
 dev_priv->vbt.psr.require_aux_wakeup = psr_table->require_aux_to_wakeup;


 dev_priv->vbt.psr.idle_frames = psr_table->idle_frames < 0 ? 0 :
  psr_table->idle_frames > 15 ? 15 : psr_table->idle_frames;

 switch (psr_table->lines_to_wait) {
 case 0:
  dev_priv->vbt.psr.lines_to_wait = PSR_0_LINES_TO_WAIT;
  break;
 case 1:
  dev_priv->vbt.psr.lines_to_wait = PSR_1_LINE_TO_WAIT;
  break;
 case 2:
  dev_priv->vbt.psr.lines_to_wait = PSR_4_LINES_TO_WAIT;
  break;
 case 3:
  dev_priv->vbt.psr.lines_to_wait = PSR_8_LINES_TO_WAIT;
  break;
 default:
  DRM_DEBUG_KMS("VBT has unknown PSR lines to wait %u\n",
         psr_table->lines_to_wait);
  break;
 }





 if (bdb->version >= 205 &&
     (IS_GEN9_BC(dev_priv) || IS_GEMINILAKE(dev_priv) ||
      INTEL_GEN(dev_priv) >= 10)) {
  switch (psr_table->tp1_wakeup_time) {
  case 0:
   dev_priv->vbt.psr.tp1_wakeup_time_us = 500;
   break;
  case 1:
   dev_priv->vbt.psr.tp1_wakeup_time_us = 100;
   break;
  case 3:
   dev_priv->vbt.psr.tp1_wakeup_time_us = 0;
   break;
  default:
   DRM_DEBUG_KMS("VBT tp1 wakeup time value %d is outside range[0-3], defaulting to max value 2500us\n",
     psr_table->tp1_wakeup_time);

  case 2:
   dev_priv->vbt.psr.tp1_wakeup_time_us = 2500;
   break;
  }

  switch (psr_table->tp2_tp3_wakeup_time) {
  case 0:
   dev_priv->vbt.psr.tp2_tp3_wakeup_time_us = 500;
   break;
  case 1:
   dev_priv->vbt.psr.tp2_tp3_wakeup_time_us = 100;
   break;
  case 3:
   dev_priv->vbt.psr.tp2_tp3_wakeup_time_us = 0;
   break;
  default:
   DRM_DEBUG_KMS("VBT tp2_tp3 wakeup time value %d is outside range[0-3], defaulting to max value 2500us\n",
     psr_table->tp2_tp3_wakeup_time);

  case 2:
   dev_priv->vbt.psr.tp2_tp3_wakeup_time_us = 2500;
  break;
  }
 } else {
  dev_priv->vbt.psr.tp1_wakeup_time_us = psr_table->tp1_wakeup_time * 100;
  dev_priv->vbt.psr.tp2_tp3_wakeup_time_us = psr_table->tp2_tp3_wakeup_time * 100;
 }

 if (bdb->version >= 226) {
  u32 wakeup_time = psr->psr2_tp2_tp3_wakeup_time;

  wakeup_time = (wakeup_time >> (2 * panel_type)) & 0x3;
  switch (wakeup_time) {
  case 0:
   wakeup_time = 500;
   break;
  case 1:
   wakeup_time = 100;
   break;
  case 3:
   wakeup_time = 50;
   break;
  default:
  case 2:
   wakeup_time = 2500;
   break;
  }
  dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us = wakeup_time;
 } else {

  dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us = dev_priv->vbt.psr.tp2_tp3_wakeup_time_us;
 }
}
