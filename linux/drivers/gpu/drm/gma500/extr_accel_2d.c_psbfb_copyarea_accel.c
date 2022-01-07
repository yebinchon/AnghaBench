
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct psb_framebuffer {TYPE_1__ base; } ;
struct TYPE_6__ {struct drm_framebuffer* fb; } ;
struct psb_fbdev {TYPE_2__ psb_fb_helper; struct psb_framebuffer pfb; } ;
struct fb_info {struct psb_fbdev* par; } ;
struct fb_copyarea {int height; int width; int dy; int dx; int sy; int sx; } ;
struct drm_psb_private {int dummy; } ;
struct drm_framebuffer {TYPE_3__* format; int * pitches; int * obj; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_8__ {int offset; } ;
struct TYPE_7__ {int depth; } ;


 int PSB_2D_DST_332RGB ;
 int PSB_2D_DST_555RGB ;
 int PSB_2D_DST_565RGB ;
 int PSB_2D_DST_8888ARGB ;
 int PSB_2D_SRC_332RGB ;
 int PSB_2D_SRC_555RGB ;
 int PSB_2D_SRC_565RGB ;
 int PSB_2D_SRC_8888ARGB ;
 int drm_fb_helper_cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 int psb_accel_2d_copy (struct drm_psb_private*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_4__* to_gtt_range (int ) ;

__attribute__((used)) static void psbfb_copyarea_accel(struct fb_info *info,
     const struct fb_copyarea *a)
{
 struct psb_fbdev *fbdev = info->par;
 struct psb_framebuffer *psbfb = &fbdev->pfb;
 struct drm_device *dev = psbfb->base.dev;
 struct drm_framebuffer *fb = fbdev->psb_fb_helper.fb;
 struct drm_psb_private *dev_priv = dev->dev_private;
 uint32_t offset;
 uint32_t stride;
 uint32_t src_format;
 uint32_t dst_format;

 if (!fb)
  return;

 offset = to_gtt_range(fb->obj[0])->offset;
 stride = fb->pitches[0];

 switch (fb->format->depth) {
 case 8:
  src_format = PSB_2D_SRC_332RGB;
  dst_format = PSB_2D_DST_332RGB;
  break;
 case 15:
  src_format = PSB_2D_SRC_555RGB;
  dst_format = PSB_2D_DST_555RGB;
  break;
 case 16:
  src_format = PSB_2D_SRC_565RGB;
  dst_format = PSB_2D_DST_565RGB;
  break;
 case 24:
 case 32:

  src_format = PSB_2D_SRC_8888ARGB;
  dst_format = PSB_2D_DST_8888ARGB;
  break;
 default:

  drm_fb_helper_cfb_copyarea(info, a);
  return;
 }

 if (!gma_power_begin(dev, 0)) {
  drm_fb_helper_cfb_copyarea(info, a);
  return;
 }
 psb_accel_2d_copy(dev_priv,
     offset, stride, src_format,
     offset, stride, dst_format,
     a->sx, a->sy, a->dx, a->dy, a->width, a->height);
 gma_power_end(dev);
}
