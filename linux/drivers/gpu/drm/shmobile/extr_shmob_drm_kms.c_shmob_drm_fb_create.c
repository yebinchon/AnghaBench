
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_format_info {int bpp; scalar_t__ yuv; } ;
struct drm_mode_fb_cmd2 {int* pitches; int pixel_format; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dev; } ;


 int EINVAL ;
 struct drm_framebuffer* ERR_PTR (int ) ;
 int dev_dbg (int ,char*,...) ;
 struct drm_framebuffer* drm_gem_fb_create (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;
 struct shmob_drm_format_info* shmob_drm_format_info (int ) ;

__attribute__((used)) static struct drm_framebuffer *
shmob_drm_fb_create(struct drm_device *dev, struct drm_file *file_priv,
      const struct drm_mode_fb_cmd2 *mode_cmd)
{
 const struct shmob_drm_format_info *format;

 format = shmob_drm_format_info(mode_cmd->pixel_format);
 if (format == ((void*)0)) {
  dev_dbg(dev->dev, "unsupported pixel format %08x\n",
   mode_cmd->pixel_format);
  return ERR_PTR(-EINVAL);
 }

 if (mode_cmd->pitches[0] & 7 || mode_cmd->pitches[0] >= 65536) {
  dev_dbg(dev->dev, "invalid pitch value %u\n",
   mode_cmd->pitches[0]);
  return ERR_PTR(-EINVAL);
 }

 if (format->yuv) {
  unsigned int chroma_cpp = format->bpp == 24 ? 2 : 1;

  if (mode_cmd->pitches[1] != mode_cmd->pitches[0] * chroma_cpp) {
   dev_dbg(dev->dev,
    "luma and chroma pitches do not match\n");
   return ERR_PTR(-EINVAL);
  }
 }

 return drm_gem_fb_create(dev, file_priv, mode_cmd);
}
