
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {int dummy; } ;
struct fsl_dcu_drm_device {int drm; struct drm_crtc crtc; } ;
struct drm_plane {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* destroy ) (struct drm_plane*) ;} ;


 int ENOMEM ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (int ,struct drm_crtc*,struct drm_plane*,int *,int *,int *) ;
 int fsl_dcu_drm_crtc_funcs ;
 int fsl_dcu_drm_crtc_helper_funcs ;
 int fsl_dcu_drm_init_planes (int ) ;
 struct drm_plane* fsl_dcu_drm_primary_create_plane (int ) ;
 int stub1 (struct drm_plane*) ;

int fsl_dcu_drm_crtc_create(struct fsl_dcu_drm_device *fsl_dev)
{
 struct drm_plane *primary;
 struct drm_crtc *crtc = &fsl_dev->crtc;
 int ret;

 fsl_dcu_drm_init_planes(fsl_dev->drm);

 primary = fsl_dcu_drm_primary_create_plane(fsl_dev->drm);
 if (!primary)
  return -ENOMEM;

 ret = drm_crtc_init_with_planes(fsl_dev->drm, crtc, primary, ((void*)0),
     &fsl_dcu_drm_crtc_funcs, ((void*)0));
 if (ret) {
  primary->funcs->destroy(primary);
  return ret;
 }

 drm_crtc_helper_add(crtc, &fsl_dcu_drm_crtc_helper_funcs);

 return 0;
}
