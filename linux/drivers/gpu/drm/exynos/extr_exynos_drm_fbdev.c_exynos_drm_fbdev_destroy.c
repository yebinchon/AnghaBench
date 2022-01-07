
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {int kvaddr; } ;
struct exynos_drm_fbdev {struct exynos_drm_gem* exynos_gem; } ;
struct drm_framebuffer {scalar_t__ funcs; } ;
struct drm_fb_helper {struct drm_framebuffer* fb; } ;
struct drm_device {int dummy; } ;


 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_unregister_fbi (struct drm_fb_helper*) ;
 int drm_framebuffer_remove (struct drm_framebuffer*) ;
 struct exynos_drm_fbdev* to_exynos_fbdev (struct drm_fb_helper*) ;
 int vunmap (int ) ;

__attribute__((used)) static void exynos_drm_fbdev_destroy(struct drm_device *dev,
          struct drm_fb_helper *fb_helper)
{
 struct exynos_drm_fbdev *exynos_fbd = to_exynos_fbdev(fb_helper);
 struct exynos_drm_gem *exynos_gem = exynos_fbd->exynos_gem;
 struct drm_framebuffer *fb;

 vunmap(exynos_gem->kvaddr);


 if (fb_helper->fb && fb_helper->fb->funcs) {
  fb = fb_helper->fb;
  if (fb)
   drm_framebuffer_remove(fb);
 }

 drm_fb_helper_unregister_fbi(fb_helper);

 drm_fb_helper_fini(fb_helper);
}
