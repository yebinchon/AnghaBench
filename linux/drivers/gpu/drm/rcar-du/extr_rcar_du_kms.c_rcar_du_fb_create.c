
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_format_info {int planes; int bpp; } ;
struct rcar_du_device {TYPE_1__* info; } ;
struct drm_mode_fb_cmd2 {unsigned int* pitches; int pixel_format; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dev; struct rcar_du_device* dev_private; } ;
struct TYPE_2__ {int gen; } ;


 int EINVAL ;
 struct drm_framebuffer* ERR_PTR (int ) ;
 int RCAR_DU_QUIRK_ALIGN_128B ;
 int dev_dbg (int ,char*,...) ;
 struct drm_framebuffer* drm_gem_fb_create (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;
 struct rcar_du_format_info* rcar_du_format_info (int ) ;
 scalar_t__ rcar_du_needs (struct rcar_du_device*,int ) ;

__attribute__((used)) static struct drm_framebuffer *
rcar_du_fb_create(struct drm_device *dev, struct drm_file *file_priv,
    const struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct rcar_du_device *rcdu = dev->dev_private;
 const struct rcar_du_format_info *format;
 unsigned int max_pitch;
 unsigned int align;
 unsigned int i;

 format = rcar_du_format_info(mode_cmd->pixel_format);
 if (format == ((void*)0)) {
  dev_dbg(dev->dev, "unsupported pixel format %08x\n",
   mode_cmd->pixel_format);
  return ERR_PTR(-EINVAL);
 }

 if (rcdu->info->gen < 3) {





  unsigned int bpp = format->planes == 1 ? format->bpp / 8 : 1;

  max_pitch = 4095 * bpp;

  if (rcar_du_needs(rcdu, RCAR_DU_QUIRK_ALIGN_128B))
   align = 128;
  else
   align = 16 * bpp;
 } else {





  max_pitch = 65535;
  align = 1;
 }

 if (mode_cmd->pitches[0] & (align - 1) ||
     mode_cmd->pitches[0] > max_pitch) {
  dev_dbg(dev->dev, "invalid pitch value %u\n",
   mode_cmd->pitches[0]);
  return ERR_PTR(-EINVAL);
 }

 for (i = 1; i < format->planes; ++i) {
  if (mode_cmd->pitches[i] != mode_cmd->pitches[0]) {
   dev_dbg(dev->dev,
    "luma and chroma pitches do not match\n");
   return ERR_PTR(-EINVAL);
  }
 }

 return drm_gem_fb_create(dev, file_priv, mode_cmd);
}
