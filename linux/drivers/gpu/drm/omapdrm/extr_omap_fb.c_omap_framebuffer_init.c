
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct plane {scalar_t__ dma_addr; } ;
struct TYPE_2__ {int id; } ;
struct drm_framebuffer {TYPE_1__ base; struct drm_gem_object** obj; } ;
struct omap_framebuffer {struct plane* planes; int lock; struct drm_format_info const* format; struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {unsigned int* pitches; unsigned int height; scalar_t__ pixel_format; unsigned int* offsets; int width; } ;
struct drm_gem_object {unsigned int size; } ;
struct drm_format_info {int num_planes; unsigned int* cpp; int vsub; } ;
struct drm_device {int dev; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int DBG (char*,struct drm_device*,...) ;
 int EINVAL ;
 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int drm_framebuffer_init (struct drm_device*,struct drm_framebuffer*,int *) ;
 struct drm_format_info* drm_get_format_info (struct drm_device*,struct drm_mode_fb_cmd2 const*) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ;
 scalar_t__* formats ;
 int kfree (struct omap_framebuffer*) ;
 struct omap_framebuffer* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int omap_framebuffer_funcs ;
 int omap_gem_mmap_size (struct drm_gem_object*) ;

struct drm_framebuffer *omap_framebuffer_init(struct drm_device *dev,
  const struct drm_mode_fb_cmd2 *mode_cmd, struct drm_gem_object **bos)
{
 const struct drm_format_info *format = ((void*)0);
 struct omap_framebuffer *omap_fb = ((void*)0);
 struct drm_framebuffer *fb = ((void*)0);
 unsigned int pitch = mode_cmd->pitches[0];
 int ret, i;

 DBG("create framebuffer: dev=%p, mode_cmd=%p (%dx%d@%4.4s)",
   dev, mode_cmd, mode_cmd->width, mode_cmd->height,
   (char *)&mode_cmd->pixel_format);

 format = drm_get_format_info(dev, mode_cmd);

 for (i = 0; i < ARRAY_SIZE(formats); i++) {
  if (formats[i] == mode_cmd->pixel_format)
   break;
 }

 if (!format || i == ARRAY_SIZE(formats)) {
  dev_dbg(dev->dev, "unsupported pixel format: %4.4s\n",
   (char *)&mode_cmd->pixel_format);
  ret = -EINVAL;
  goto fail;
 }

 omap_fb = kzalloc(sizeof(*omap_fb), GFP_KERNEL);
 if (!omap_fb) {
  ret = -ENOMEM;
  goto fail;
 }

 fb = &omap_fb->base;
 omap_fb->format = format;
 mutex_init(&omap_fb->lock);






 if (format->num_planes == 2 && pitch != mode_cmd->pitches[1]) {
  dev_dbg(dev->dev, "pitches differ between planes 0 and 1\n");
  ret = -EINVAL;
  goto fail;
 }

 if (pitch % format->cpp[0]) {
  dev_dbg(dev->dev,
   "buffer pitch (%u bytes) is not a multiple of pixel size (%u bytes)\n",
   pitch, format->cpp[0]);
  ret = -EINVAL;
  goto fail;
 }

 for (i = 0; i < format->num_planes; i++) {
  struct plane *plane = &omap_fb->planes[i];
  unsigned int vsub = i == 0 ? 1 : format->vsub;
  unsigned int size;

  size = pitch * mode_cmd->height / vsub;

  if (size > omap_gem_mmap_size(bos[i]) - mode_cmd->offsets[i]) {
   dev_dbg(dev->dev,
    "provided buffer object is too small! %zu < %d\n",
    bos[i]->size - mode_cmd->offsets[i], size);
   ret = -EINVAL;
   goto fail;
  }

  fb->obj[i] = bos[i];
  plane->dma_addr = 0;
 }

 drm_helper_mode_fill_fb_struct(dev, fb, mode_cmd);

 ret = drm_framebuffer_init(dev, fb, &omap_framebuffer_funcs);
 if (ret) {
  dev_err(dev->dev, "framebuffer init failed: %d\n", ret);
  goto fail;
 }

 DBG("create: FB ID: %d (%p)", fb->base.id, fb);

 return fb;

fail:
 kfree(omap_fb);

 return ERR_PTR(ret);
}
