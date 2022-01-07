
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_framebuffer {int dummy; } ;
struct udl_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int* pitches; int height; int * handles; } ;
struct drm_gem_object {int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ALIGN (int,int ) ;
 int DRM_ERROR (char*,int,int,int,int) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int kfree (struct udl_framebuffer*) ;
 struct udl_framebuffer* kzalloc (int,int ) ;
 int to_udl_bo (struct drm_gem_object*) ;
 int udl_framebuffer_init (struct drm_device*,struct udl_framebuffer*,struct drm_mode_fb_cmd2 const*,int ) ;

struct drm_framebuffer *
udl_fb_user_fb_create(struct drm_device *dev,
     struct drm_file *file,
     const struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct drm_gem_object *obj;
 struct udl_framebuffer *ufb;
 int ret;
 uint32_t size;

 obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
 if (obj == ((void*)0))
  return ERR_PTR(-ENOENT);

 size = mode_cmd->pitches[0] * mode_cmd->height;
 size = ALIGN(size, PAGE_SIZE);

 if (size > obj->size) {
  DRM_ERROR("object size not sufficient for fb %d %zu %d %d\n", size, obj->size, mode_cmd->pitches[0], mode_cmd->height);
  return ERR_PTR(-ENOMEM);
 }

 ufb = kzalloc(sizeof(*ufb), GFP_KERNEL);
 if (ufb == ((void*)0))
  return ERR_PTR(-ENOMEM);

 ret = udl_framebuffer_init(dev, ufb, mode_cmd, to_udl_bo(obj));
 if (ret) {
  kfree(ufb);
  return ERR_PTR(-EINVAL);
 }
 return &ufb->base;
}
