
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mga_crtc* crtc; } ;
struct mga_device {TYPE_1__ mode_info; int dev; } ;
struct mga_crtc {int base; } ;
struct drm_connector {int dummy; } ;


 int GFP_KERNEL ;
 int MGAG200FB_CONN_LIMIT ;
 int MGAG200_LUT_SIZE ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init (int ,int *,int *) ;
 int drm_mode_crtc_set_gamma_size (int *,int ) ;
 struct mga_crtc* kzalloc (int,int ) ;
 int mga_crtc_funcs ;
 int mga_helper_funcs ;

__attribute__((used)) static void mga_crtc_init(struct mga_device *mdev)
{
 struct mga_crtc *mga_crtc;

 mga_crtc = kzalloc(sizeof(struct mga_crtc) +
         (MGAG200FB_CONN_LIMIT * sizeof(struct drm_connector *)),
         GFP_KERNEL);

 if (mga_crtc == ((void*)0))
  return;

 drm_crtc_init(mdev->dev, &mga_crtc->base, &mga_crtc_funcs);

 drm_mode_crtc_set_gamma_size(&mga_crtc->base, MGAG200_LUT_SIZE);
 mdev->mode_info.crtc = mga_crtc;

 drm_crtc_helper_add(&mga_crtc->base, &mga_helper_funcs);
}
