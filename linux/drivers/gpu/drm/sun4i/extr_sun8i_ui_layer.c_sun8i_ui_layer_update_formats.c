
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int regs; } ;
struct sun8i_mixer {TYPE_1__ engine; } ;
struct drm_plane_state {TYPE_3__* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct de2_fmt_info {int de2_fmt; int rgb; } ;
struct TYPE_6__ {TYPE_2__* format; } ;
struct TYPE_5__ {int format; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int EINVAL ;
 int SUN8I_MIXER_CHAN_UI_LAYER_ATTR (int,int) ;
 int SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_MASK ;
 int SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_OFFSET ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int sun8i_channel_base (struct sun8i_mixer*,int) ;
 struct de2_fmt_info* sun8i_mixer_format_info (int ) ;

__attribute__((used)) static int sun8i_ui_layer_update_formats(struct sun8i_mixer *mixer, int channel,
      int overlay, struct drm_plane *plane)
{
 struct drm_plane_state *state = plane->state;
 const struct de2_fmt_info *fmt_info;
 u32 val, ch_base;

 ch_base = sun8i_channel_base(mixer, channel);

 fmt_info = sun8i_mixer_format_info(state->fb->format->format);
 if (!fmt_info || !fmt_info->rgb) {
  DRM_DEBUG_DRIVER("Invalid format\n");
  return -EINVAL;
 }

 val = fmt_info->de2_fmt << SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_OFFSET;
 regmap_update_bits(mixer->engine.regs,
      SUN8I_MIXER_CHAN_UI_LAYER_ATTR(ch_base, overlay),
      SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_MASK, val);

 return 0;
}
