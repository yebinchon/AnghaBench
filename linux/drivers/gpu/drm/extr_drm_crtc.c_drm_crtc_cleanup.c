
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_crtc {int * name; scalar_t__ state; TYPE_2__* funcs; int head; int base; int mutex; int * gamma_store; struct drm_device* dev; } ;
struct TYPE_4__ {int (* atomic_destroy_state ) (struct drm_crtc*,scalar_t__) ;} ;


 int WARN_ON (int) ;
 int drm_crtc_crc_fini (struct drm_crtc*) ;
 int drm_mode_object_unregister (struct drm_device*,int *) ;
 int drm_modeset_lock_fini (int *) ;
 int kfree (int *) ;
 int list_del (int *) ;
 int memset (struct drm_crtc*,int ,int) ;
 int stub1 (struct drm_crtc*,scalar_t__) ;

void drm_crtc_cleanup(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;






 drm_crtc_crc_fini(crtc);

 kfree(crtc->gamma_store);
 crtc->gamma_store = ((void*)0);

 drm_modeset_lock_fini(&crtc->mutex);

 drm_mode_object_unregister(dev, &crtc->base);
 list_del(&crtc->head);
 dev->mode_config.num_crtc--;

 WARN_ON(crtc->state && !crtc->funcs->atomic_destroy_state);
 if (crtc->state && crtc->funcs->atomic_destroy_state)
  crtc->funcs->atomic_destroy_state(crtc, crtc->state);

 kfree(crtc->name);

 memset(crtc, 0, sizeof(*crtc));
}
