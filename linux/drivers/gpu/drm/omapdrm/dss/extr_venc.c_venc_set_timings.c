
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venc_device {int venc_lock; TYPE_1__* dss; int * config; } ;
struct omap_dss_device {int dummy; } ;
struct drm_display_mode {int dummy; } ;
typedef enum venc_videomode { ____Placeholder_venc_videomode } venc_videomode ;
struct TYPE_2__ {int dispc; } ;


 int DSSDBG (char*) ;


 int WARN_ON_ONCE (int) ;
 int dispc_set_tv_pclk (int ,int) ;
 struct venc_device* dssdev_to_venc (struct omap_dss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int venc_config_ntsc_trm ;
 int venc_config_pal_trm ;
 int venc_get_videomode (struct drm_display_mode const*) ;

__attribute__((used)) static void venc_set_timings(struct omap_dss_device *dssdev,
        const struct drm_display_mode *mode)
{
 struct venc_device *venc = dssdev_to_venc(dssdev);
 enum venc_videomode venc_mode = venc_get_videomode(mode);

 DSSDBG("venc_set_timings\n");

 mutex_lock(&venc->venc_lock);

 switch (venc_mode) {
 default:
  WARN_ON_ONCE(1);

 case 128:
  venc->config = &venc_config_pal_trm;
  break;

 case 129:
  venc->config = &venc_config_ntsc_trm;
  break;
 }

 dispc_set_tv_pclk(venc->dss->dispc, 13500000);

 mutex_unlock(&venc->venc_lock);
}
