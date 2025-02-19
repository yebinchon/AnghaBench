
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int regs; } ;
struct sun8i_mixer {TYPE_4__ engine; TYPE_3__* cfg; } ;
struct drm_plane_state {int color_range; int color_encoding; TYPE_2__* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct de2_fmt_info {int de2_fmt; scalar_t__ csc; scalar_t__ rgb; } ;
struct TYPE_7__ {scalar_t__ is_de3; } ;
struct TYPE_6__ {TYPE_1__* format; } ;
struct TYPE_5__ {int format; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int EINVAL ;
 int SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA (int) ;
 int SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK ;
 scalar_t__ SUN8I_CSC_MODE_OFF ;
 int SUN8I_MIXER_CHAN_VI_LAYER_ATTR (int,int) ;
 int SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK ;
 int SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET ;
 int SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE ;
 int regmap_update_bits (int ,int ,int,int) ;
 int sun8i_channel_base (struct sun8i_mixer*,int) ;
 int sun8i_csc_enable_ccsc (struct sun8i_mixer*,int,int) ;
 int sun8i_csc_set_ccsc_coefficients (struct sun8i_mixer*,int,scalar_t__,int ,int ) ;
 struct de2_fmt_info* sun8i_mixer_format_info (int ) ;

__attribute__((used)) static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
      int overlay, struct drm_plane *plane)
{
 struct drm_plane_state *state = plane->state;
 const struct de2_fmt_info *fmt_info;
 u32 val, ch_base;

 ch_base = sun8i_channel_base(mixer, channel);

 fmt_info = sun8i_mixer_format_info(state->fb->format->format);
 if (!fmt_info) {
  DRM_DEBUG_DRIVER("Invalid format\n");
  return -EINVAL;
 }

 val = fmt_info->de2_fmt << SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET;
 regmap_update_bits(mixer->engine.regs,
      SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
      SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK, val);

 if (fmt_info->csc != SUN8I_CSC_MODE_OFF) {
  sun8i_csc_set_ccsc_coefficients(mixer, channel, fmt_info->csc,
      state->color_encoding,
      state->color_range);
  sun8i_csc_enable_ccsc(mixer, channel, 1);
 } else {
  sun8i_csc_enable_ccsc(mixer, channel, 0);
 }

 if (fmt_info->rgb)
  val = SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE;
 else
  val = 0;

 regmap_update_bits(mixer->engine.regs,
      SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
      SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE, val);


 if (mixer->cfg->is_de3)
  regmap_update_bits(mixer->engine.regs,
       SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base,
          overlay),
       SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK,
       SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA(0xff));

 return 0;
}
