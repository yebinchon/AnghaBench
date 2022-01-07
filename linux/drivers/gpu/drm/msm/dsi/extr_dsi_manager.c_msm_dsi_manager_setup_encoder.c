
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_kms {TYPE_2__* funcs; } ;
struct msm_dsi {TYPE_1__* dev; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_4__ {int (* set_encoder_mode ) (struct msm_kms*,struct drm_encoder*,int ) ;} ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;


 struct msm_dsi* dsi_mgr_get_dsi (int) ;
 int dsi_mgr_is_cmd_mode (struct msm_dsi*) ;
 struct drm_encoder* msm_dsi_get_encoder (struct msm_dsi*) ;
 int stub1 (struct msm_kms*,struct drm_encoder*,int ) ;

void msm_dsi_manager_setup_encoder(int id)
{
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);
 struct msm_drm_private *priv = msm_dsi->dev->dev_private;
 struct msm_kms *kms = priv->kms;
 struct drm_encoder *encoder = msm_dsi_get_encoder(msm_dsi);

 if (encoder && kms->funcs->set_encoder_mode)
  kms->funcs->set_encoder_mode(kms, encoder,
          dsi_mgr_is_cmd_mode(msm_dsi));
}
