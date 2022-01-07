
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* funcs; TYPE_2__* format; int height; int width; } ;
struct TYPE_6__ {int smem_len; scalar_t__ smem_start; } ;
struct fb_info {TYPE_4__ fb; void* screen_base; int screen_size; TYPE_1__ fix; int * fbops; } ;
struct drm_mode_fb_cmd2 {int height; int* pitches; int pixel_format; int width; } ;
struct drm_fb_helper_surface_size {int surface_height; int surface_depth; int surface_bpp; int surface_width; } ;
struct drm_fb_helper {TYPE_4__* fb; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_10__ {int size; } ;
struct armada_gem_object {scalar_t__ phys_addr; TYPE_5__ obj; } ;
struct armada_framebuffer {TYPE_4__ fb; void* screen_base; int screen_size; TYPE_1__ fix; int * fbops; } ;
typedef int mode ;
struct TYPE_8__ {int (* destroy ) (TYPE_4__*) ;} ;
struct TYPE_7__ {int* cpp; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int,unsigned long long) ;
 int DRM_ERROR (char*) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct fb_info*) ;
 int PTR_ERR (struct fb_info*) ;
 int armada_fb_ops ;
 struct fb_info* armada_framebuffer_create (struct drm_device*,struct drm_mode_fb_cmd2*,struct armada_gem_object*) ;
 struct armada_gem_object* armada_gem_alloc_private_object (struct drm_device*,int) ;
 int armada_gem_linear_back (struct drm_device*,struct armada_gem_object*) ;
 void* armada_gem_map_object (struct drm_device*,struct armada_gem_object*) ;
 int armada_pitch (int ,int ) ;
 struct fb_info* drm_fb_helper_alloc_fbi (struct drm_fb_helper*) ;
 int drm_fb_helper_fill_info (struct fb_info*,struct drm_fb_helper*,struct drm_fb_helper_surface_size*) ;
 int drm_gem_object_put_unlocked (TYPE_5__*) ;
 int drm_mode_legacy_fb_format (int ,int ) ;
 int memset (struct drm_mode_fb_cmd2*,int ,int) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static int armada_fbdev_create(struct drm_fb_helper *fbh,
 struct drm_fb_helper_surface_size *sizes)
{
 struct drm_device *dev = fbh->dev;
 struct drm_mode_fb_cmd2 mode;
 struct armada_framebuffer *dfb;
 struct armada_gem_object *obj;
 struct fb_info *info;
 int size, ret;
 void *ptr;

 memset(&mode, 0, sizeof(mode));
 mode.width = sizes->surface_width;
 mode.height = sizes->surface_height;
 mode.pitches[0] = armada_pitch(mode.width, sizes->surface_bpp);
 mode.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
     sizes->surface_depth);

 size = mode.pitches[0] * mode.height;
 obj = armada_gem_alloc_private_object(dev, size);
 if (!obj) {
  DRM_ERROR("failed to allocate fb memory\n");
  return -ENOMEM;
 }

 ret = armada_gem_linear_back(dev, obj);
 if (ret) {
  drm_gem_object_put_unlocked(&obj->obj);
  return ret;
 }

 ptr = armada_gem_map_object(dev, obj);
 if (!ptr) {
  drm_gem_object_put_unlocked(&obj->obj);
  return -ENOMEM;
 }

 dfb = armada_framebuffer_create(dev, &mode, obj);





 drm_gem_object_put_unlocked(&obj->obj);

 if (IS_ERR(dfb))
  return PTR_ERR(dfb);

 info = drm_fb_helper_alloc_fbi(fbh);
 if (IS_ERR(info)) {
  ret = PTR_ERR(info);
  goto err_fballoc;
 }

 info->fbops = &armada_fb_ops;
 info->fix.smem_start = obj->phys_addr;
 info->fix.smem_len = obj->obj.size;
 info->screen_size = obj->obj.size;
 info->screen_base = ptr;
 fbh->fb = &dfb->fb;

 drm_fb_helper_fill_info(info, fbh, sizes);

 DRM_DEBUG_KMS("allocated %dx%d %dbpp fb: 0x%08llx\n",
  dfb->fb.width, dfb->fb.height, dfb->fb.format->cpp[0] * 8,
  (unsigned long long)obj->phys_addr);

 return 0;

 err_fballoc:
 dfb->fb.funcs->destroy(&dfb->fb);
 return ret;
}
