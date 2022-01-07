
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {unsigned long size; } ;
struct drm_mode_fb_cmd2 {unsigned int height; unsigned int* pitches; unsigned int* offsets; int * handles; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_format_info {int num_planes; int vsub; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dev; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int EINVAL ;
 int ENOENT ;
 struct drm_framebuffer* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct drm_framebuffer*) ;
 int MAX_FB_BUFFER ;
 int PTR_ERR (struct drm_framebuffer*) ;
 struct drm_format_info* drm_get_format_info (struct drm_device*,struct drm_mode_fb_cmd2 const*) ;
 struct drm_framebuffer* exynos_drm_framebuffer_init (struct drm_device*,struct drm_mode_fb_cmd2 const*,struct exynos_drm_gem**,int) ;
 struct exynos_drm_gem* exynos_drm_gem_get (struct drm_file*,int ) ;
 int exynos_drm_gem_put (struct exynos_drm_gem*) ;

__attribute__((used)) static struct drm_framebuffer *
exynos_user_fb_create(struct drm_device *dev, struct drm_file *file_priv,
        const struct drm_mode_fb_cmd2 *mode_cmd)
{
 const struct drm_format_info *info = drm_get_format_info(dev, mode_cmd);
 struct exynos_drm_gem *exynos_gem[MAX_FB_BUFFER];
 struct drm_framebuffer *fb;
 int i;
 int ret;

 for (i = 0; i < info->num_planes; i++) {
  unsigned int height = (i == 0) ? mode_cmd->height :
         DIV_ROUND_UP(mode_cmd->height, info->vsub);
  unsigned long size = height * mode_cmd->pitches[i] +
         mode_cmd->offsets[i];

  exynos_gem[i] = exynos_drm_gem_get(file_priv,
         mode_cmd->handles[i]);
  if (!exynos_gem[i]) {
   DRM_DEV_ERROR(dev->dev,
          "failed to lookup gem object\n");
   ret = -ENOENT;
   goto err;
  }

  if (size > exynos_gem[i]->size) {
   i++;
   ret = -EINVAL;
   goto err;
  }
 }

 fb = exynos_drm_framebuffer_init(dev, mode_cmd, exynos_gem, i);
 if (IS_ERR(fb)) {
  ret = PTR_ERR(fb);
  goto err;
 }

 return fb;

err:
 while (i--)
  exynos_drm_gem_put(exynos_gem[i]);

 return ERR_PTR(ret);
}
