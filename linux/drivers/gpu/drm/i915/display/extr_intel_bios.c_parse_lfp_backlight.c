
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lfp_backlight_data_entry {int min_brightness; int active_low_pwm; int pwm_freq_hz; int type; } ;
struct lfp_backlight_control_method {int controller; int type; } ;
struct TYPE_3__ {int present; int controller; int min_brightness; int active_low_pwm; int pwm_freq_hz; int type; } ;
struct TYPE_4__ {int panel_type; TYPE_1__ backlight; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct bdb_lfp_backlight_data {int entry_size; int * level; struct lfp_backlight_control_method* backlight_control; struct lfp_backlight_data_entry* data; } ;
struct bdb_header {int version; } ;


 int BDB_BACKLIGHT_TYPE_PWM ;
 int BDB_LVDS_BACKLIGHT ;
 int DRM_DEBUG_KMS (char*,int,...) ;
 int INTEL_BACKLIGHT_DISPLAY_DDI ;
 struct bdb_lfp_backlight_data* find_section (struct bdb_header const*,int ) ;
 int get_blocksize (struct bdb_lfp_backlight_data const*) ;

__attribute__((used)) static void
parse_lfp_backlight(struct drm_i915_private *dev_priv,
      const struct bdb_header *bdb)
{
 const struct bdb_lfp_backlight_data *backlight_data;
 const struct lfp_backlight_data_entry *entry;
 int panel_type = dev_priv->vbt.panel_type;

 backlight_data = find_section(bdb, BDB_LVDS_BACKLIGHT);
 if (!backlight_data)
  return;

 if (backlight_data->entry_size != sizeof(backlight_data->data[0])) {
  DRM_DEBUG_KMS("Unsupported backlight data entry size %u\n",
         backlight_data->entry_size);
  return;
 }

 entry = &backlight_data->data[panel_type];

 dev_priv->vbt.backlight.present = entry->type == BDB_BACKLIGHT_TYPE_PWM;
 if (!dev_priv->vbt.backlight.present) {
  DRM_DEBUG_KMS("PWM backlight not present in VBT (type %u)\n",
         entry->type);
  return;
 }

 dev_priv->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
 if (bdb->version >= 191 &&
     get_blocksize(backlight_data) >= sizeof(*backlight_data)) {
  const struct lfp_backlight_control_method *method;

  method = &backlight_data->backlight_control[panel_type];
  dev_priv->vbt.backlight.type = method->type;
  dev_priv->vbt.backlight.controller = method->controller;
 }

 dev_priv->vbt.backlight.pwm_freq_hz = entry->pwm_freq_hz;
 dev_priv->vbt.backlight.active_low_pwm = entry->active_low_pwm;
 dev_priv->vbt.backlight.min_brightness = entry->min_brightness;
 DRM_DEBUG_KMS("VBT backlight PWM modulation frequency %u Hz, "
        "active %s, min brightness %u, level %u, controller %u\n",
        dev_priv->vbt.backlight.pwm_freq_hz,
        dev_priv->vbt.backlight.active_low_pwm ? "low" : "high",
        dev_priv->vbt.backlight.min_brightness,
        backlight_data->level[panel_type],
        dev_priv->vbt.backlight.controller);
}
