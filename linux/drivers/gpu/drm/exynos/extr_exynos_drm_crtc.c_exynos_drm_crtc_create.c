
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_crtc_ops {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct exynos_drm_crtc {int type; struct drm_crtc base; void* ctx; struct exynos_drm_crtc_ops const* ops; } ;
struct drm_plane {TYPE_1__* funcs; } ;
struct drm_device {int dummy; } ;
typedef enum exynos_drm_output_type { ____Placeholder_exynos_drm_output_type } exynos_drm_output_type ;
struct TYPE_2__ {int (* destroy ) (struct drm_plane*) ;} ;


 int ENOMEM ;
 struct exynos_drm_crtc* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,int *,int *,int *) ;
 int exynos_crtc_funcs ;
 int exynos_crtc_helper_funcs ;
 int kfree (struct exynos_drm_crtc*) ;
 struct exynos_drm_crtc* kzalloc (int,int ) ;
 int stub1 (struct drm_plane*) ;

struct exynos_drm_crtc *exynos_drm_crtc_create(struct drm_device *drm_dev,
     struct drm_plane *plane,
     enum exynos_drm_output_type type,
     const struct exynos_drm_crtc_ops *ops,
     void *ctx)
{
 struct exynos_drm_crtc *exynos_crtc;
 struct drm_crtc *crtc;
 int ret;

 exynos_crtc = kzalloc(sizeof(*exynos_crtc), GFP_KERNEL);
 if (!exynos_crtc)
  return ERR_PTR(-ENOMEM);

 exynos_crtc->type = type;
 exynos_crtc->ops = ops;
 exynos_crtc->ctx = ctx;

 crtc = &exynos_crtc->base;

 ret = drm_crtc_init_with_planes(drm_dev, crtc, plane, ((void*)0),
     &exynos_crtc_funcs, ((void*)0));
 if (ret < 0)
  goto err_crtc;

 drm_crtc_helper_add(crtc, &exynos_crtc_helper_funcs);

 return exynos_crtc;

err_crtc:
 plane->funcs->destroy(plane);
 kfree(exynos_crtc);
 return ERR_PTR(ret);
}
