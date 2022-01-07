
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_kms_dev {int base; } ;
struct drm_crtc {int port; } ;
struct komeda_crtc {TYPE_1__* master; struct drm_crtc base; } ;
struct TYPE_2__ {int of_output_port; } ;


 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (int *,struct drm_crtc*,int ,int *,int *,int *) ;
 int drm_crtc_vblank_reset (struct drm_crtc*) ;
 int get_crtc_primary (struct komeda_kms_dev*,struct komeda_crtc*) ;
 int komeda_crtc_funcs ;
 int komeda_crtc_helper_funcs ;

__attribute__((used)) static int komeda_crtc_add(struct komeda_kms_dev *kms,
      struct komeda_crtc *kcrtc)
{
 struct drm_crtc *crtc = &kcrtc->base;
 int err;

 err = drm_crtc_init_with_planes(&kms->base, crtc,
     get_crtc_primary(kms, kcrtc), ((void*)0),
     &komeda_crtc_funcs, ((void*)0));
 if (err)
  return err;

 drm_crtc_helper_add(crtc, &komeda_crtc_helper_funcs);
 drm_crtc_vblank_reset(crtc);

 crtc->port = kcrtc->master->of_output_port;

 return err;
}
