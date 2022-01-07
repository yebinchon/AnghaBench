
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_2__ {int regs; } ;
struct sun4i_backend {TYPE_1__ engine; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_framebuffer {struct drm_format_info* format; } ;
struct drm_format_info {int format; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_DEBUG_DRIVER (char*,int const) ;




 int SUN4I_BACKEND_ATTCTL_REG0 (int) ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN ;
 int SUN4I_BACKEND_IYUVCTL_EN ;
 int SUN4I_BACKEND_IYUVCTL_FBFMT_PACKED_YUV422 ;
 int SUN4I_BACKEND_IYUVCTL_FBPS_UYVY ;
 int SUN4I_BACKEND_IYUVCTL_FBPS_VYUY ;
 int SUN4I_BACKEND_IYUVCTL_FBPS_YUYV ;
 int SUN4I_BACKEND_IYUVCTL_FBPS_YVYU ;
 int SUN4I_BACKEND_IYUVCTL_REG ;
 int SUN4I_BACKEND_YGCOEF_REG (int) ;
 scalar_t__ drm_format_info_is_yuv_packed (struct drm_format_info const*) ;
 scalar_t__ drm_format_info_is_yuv_sampling_422 (struct drm_format_info const*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 int * sunxi_bt601_yuv2rgb_coef ;

__attribute__((used)) static int sun4i_backend_update_yuv_format(struct sun4i_backend *backend,
        int layer, struct drm_plane *plane)
{
 struct drm_plane_state *state = plane->state;
 struct drm_framebuffer *fb = state->fb;
 const struct drm_format_info *format = fb->format;
 const uint32_t fmt = format->format;
 u32 val = SUN4I_BACKEND_IYUVCTL_EN;
 int i;

 for (i = 0; i < ARRAY_SIZE(sunxi_bt601_yuv2rgb_coef); i++)
  regmap_write(backend->engine.regs,
        SUN4I_BACKEND_YGCOEF_REG(i),
        sunxi_bt601_yuv2rgb_coef[i]);





 regmap_update_bits(backend->engine.regs, SUN4I_BACKEND_ATTCTL_REG0(layer),
      SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN,
      SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN);


 if (drm_format_info_is_yuv_packed(format) &&
     drm_format_info_is_yuv_sampling_422(format))
  val |= SUN4I_BACKEND_IYUVCTL_FBFMT_PACKED_YUV422;
 else
  DRM_DEBUG_DRIVER("Unsupported YUV format (0x%x)\n", fmt);





 switch (fmt) {
 case 129:
  val |= SUN4I_BACKEND_IYUVCTL_FBPS_VYUY;
  break;
 case 128:
  val |= SUN4I_BACKEND_IYUVCTL_FBPS_UYVY;
  break;
 case 131:
  val |= SUN4I_BACKEND_IYUVCTL_FBPS_YVYU;
  break;
 case 130:
  val |= SUN4I_BACKEND_IYUVCTL_FBPS_YUYV;
  break;
 default:
  DRM_DEBUG_DRIVER("Unsupported YUV pixel sequence (0x%x)\n",
     fmt);
 }

 regmap_write(backend->engine.regs, SUN4I_BACKEND_IYUVCTL_REG, val);

 return 0;
}
