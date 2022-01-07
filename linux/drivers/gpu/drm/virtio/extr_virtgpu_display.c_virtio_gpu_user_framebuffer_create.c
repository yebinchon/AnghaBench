
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct virtio_gpu_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {scalar_t__ pixel_format; int * handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ DRM_FORMAT_HOST_ARGB8888 ;
 scalar_t__ DRM_FORMAT_HOST_XRGB8888 ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int kfree (struct virtio_gpu_framebuffer*) ;
 struct virtio_gpu_framebuffer* kzalloc (int,int ) ;
 int virtio_gpu_framebuffer_init (struct drm_device*,struct virtio_gpu_framebuffer*,struct drm_mode_fb_cmd2 const*,struct drm_gem_object*) ;

__attribute__((used)) static struct drm_framebuffer *
virtio_gpu_user_framebuffer_create(struct drm_device *dev,
       struct drm_file *file_priv,
       const struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct drm_gem_object *obj = ((void*)0);
 struct virtio_gpu_framebuffer *virtio_gpu_fb;
 int ret;

 if (mode_cmd->pixel_format != DRM_FORMAT_HOST_XRGB8888 &&
     mode_cmd->pixel_format != DRM_FORMAT_HOST_ARGB8888)
  return ERR_PTR(-ENOENT);


 obj = drm_gem_object_lookup(file_priv, mode_cmd->handles[0]);
 if (!obj)
  return ERR_PTR(-EINVAL);

 virtio_gpu_fb = kzalloc(sizeof(*virtio_gpu_fb), GFP_KERNEL);
 if (virtio_gpu_fb == ((void*)0))
  return ERR_PTR(-ENOMEM);

 ret = virtio_gpu_framebuffer_init(dev, virtio_gpu_fb, mode_cmd, obj);
 if (ret) {
  kfree(virtio_gpu_fb);
  drm_gem_object_put_unlocked(obj);
  return ((void*)0);
 }

 return &virtio_gpu_fb->base;
}
