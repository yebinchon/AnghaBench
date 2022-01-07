
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int base; } ;
struct nouveau_drm {scalar_t__ fence; TYPE_2__ master; } ;
struct TYPE_4__ {scalar_t__ num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_6__ {int (* resume ) (struct nouveau_drm*) ;} ;


 int NV_DEBUG (struct nouveau_drm*,char*) ;
 int NV_ERROR (struct nouveau_drm*,char*,int) ;
 int nouveau_display_resume (struct drm_device*,int) ;
 int nouveau_dmem_resume (struct nouveau_drm*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_fbcon_set_suspend (struct drm_device*,int ) ;
 TYPE_3__* nouveau_fence (struct nouveau_drm*) ;
 int nouveau_led_resume (struct drm_device*) ;
 int nouveau_run_vbios_init (struct drm_device*) ;
 int nouveau_svm_resume (struct nouveau_drm*) ;
 int nvif_client_resume (int *) ;
 int stub1 (struct nouveau_drm*) ;

__attribute__((used)) static int
nouveau_do_resume(struct drm_device *dev, bool runtime)
{
 int ret = 0;
 struct nouveau_drm *drm = nouveau_drm(dev);

 NV_DEBUG(drm, "resuming object tree...\n");
 ret = nvif_client_resume(&drm->master.base);
 if (ret) {
  NV_ERROR(drm, "Client resume failed with error: %d\n", ret);
  return ret;
 }

 NV_DEBUG(drm, "resuming fence...\n");
 if (drm->fence && nouveau_fence(drm)->resume)
  nouveau_fence(drm)->resume(drm);

 nouveau_run_vbios_init(dev);

 if (dev->mode_config.num_crtc) {
  NV_DEBUG(drm, "resuming display...\n");
  nouveau_display_resume(dev, runtime);
  NV_DEBUG(drm, "resuming console...\n");
  nouveau_fbcon_set_suspend(dev, 0);
 }

 nouveau_led_resume(dev);
 nouveau_dmem_resume(drm);
 nouveau_svm_resume(drm);
 return 0;
}
