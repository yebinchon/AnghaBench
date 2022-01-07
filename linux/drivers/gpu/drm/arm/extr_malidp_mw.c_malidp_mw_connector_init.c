
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int possible_crtcs; } ;
struct TYPE_8__ {int base; TYPE_2__ encoder; } ;
struct malidp_drm {TYPE_4__ mw_connector; int crtc; TYPE_1__* dev; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
struct TYPE_7__ {int enable_memwrite; } ;
struct TYPE_5__ {TYPE_3__* hw; } ;


 int ENOMEM ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_crtc_index (int *) ;
 int drm_writeback_connector_init (struct drm_device*,TYPE_4__*,int *,int *,int *,int) ;
 int * get_writeback_formats (struct malidp_drm*,int*) ;
 int kfree (int *) ;
 int malidp_mw_connector_funcs ;
 int malidp_mw_connector_helper_funcs ;
 int malidp_mw_encoder_helper_funcs ;

int malidp_mw_connector_init(struct drm_device *drm)
{
 struct malidp_drm *malidp = drm->dev_private;
 u32 *formats;
 int ret, n_formats;

 if (!malidp->dev->hw->enable_memwrite)
  return 0;

 malidp->mw_connector.encoder.possible_crtcs = 1 << drm_crtc_index(&malidp->crtc);
 drm_connector_helper_add(&malidp->mw_connector.base,
     &malidp_mw_connector_helper_funcs);

 formats = get_writeback_formats(malidp, &n_formats);
 if (!formats)
  return -ENOMEM;

 ret = drm_writeback_connector_init(drm, &malidp->mw_connector,
        &malidp_mw_connector_funcs,
        &malidp_mw_encoder_helper_funcs,
        formats, n_formats);
 kfree(formats);
 if (ret)
  return ret;

 return 0;
}
