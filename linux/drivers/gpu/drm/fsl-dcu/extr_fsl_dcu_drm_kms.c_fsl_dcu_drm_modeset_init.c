
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fsl_dcu_drm_device {TYPE_2__* drm; int crtc; } ;
struct TYPE_6__ {int max_width; int max_height; int * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct TYPE_7__ {TYPE_1__ mode_config; } ;


 int drm_kms_helper_poll_init (TYPE_2__*) ;
 int drm_mode_config_cleanup (TYPE_2__*) ;
 int drm_mode_config_init (TYPE_2__*) ;
 int drm_mode_config_reset (TYPE_2__*) ;
 int fsl_dcu_create_outputs (struct fsl_dcu_drm_device*) ;
 int fsl_dcu_drm_crtc_create (struct fsl_dcu_drm_device*) ;
 int fsl_dcu_drm_encoder_create (struct fsl_dcu_drm_device*,int *) ;
 int fsl_dcu_drm_mode_config_funcs ;

int fsl_dcu_drm_modeset_init(struct fsl_dcu_drm_device *fsl_dev)
{
 int ret;

 drm_mode_config_init(fsl_dev->drm);

 fsl_dev->drm->mode_config.min_width = 0;
 fsl_dev->drm->mode_config.min_height = 0;
 fsl_dev->drm->mode_config.max_width = 2031;
 fsl_dev->drm->mode_config.max_height = 2047;
 fsl_dev->drm->mode_config.funcs = &fsl_dcu_drm_mode_config_funcs;

 ret = fsl_dcu_drm_crtc_create(fsl_dev);
 if (ret)
  goto err;

 ret = fsl_dcu_drm_encoder_create(fsl_dev, &fsl_dev->crtc);
 if (ret)
  goto err;

 ret = fsl_dcu_create_outputs(fsl_dev);
 if (ret)
  goto err;

 drm_mode_config_reset(fsl_dev->drm);
 drm_kms_helper_poll_init(fsl_dev->drm);

 return 0;

err:
 drm_mode_config_cleanup(fsl_dev->drm);
 return ret;
}
