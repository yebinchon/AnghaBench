
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct dpu_kms {int catalog; } ;
struct dpu_encoder_virt {int disp_info; TYPE_3__* cur_master; } ;
struct TYPE_6__ {int (* reset_ubwc ) (TYPE_4__*,int ) ;} ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct TYPE_7__ {TYPE_4__* hw_mdptop; } ;
struct TYPE_5__ {struct msm_drm_private* dev_private; } ;


 int DPU_ERROR (char*) ;
 int _dpu_encoder_update_vsync_source (struct dpu_encoder_virt*,int *) ;
 int stub1 (TYPE_4__*,int ) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 struct dpu_kms* to_dpu_kms (int ) ;

__attribute__((used)) static void _dpu_encoder_virt_enable_helper(struct drm_encoder *drm_enc)
{
 struct dpu_encoder_virt *dpu_enc = ((void*)0);
 struct msm_drm_private *priv;
 struct dpu_kms *dpu_kms;

 if (!drm_enc || !drm_enc->dev || !drm_enc->dev->dev_private) {
  DPU_ERROR("invalid parameters\n");
  return;
 }

 priv = drm_enc->dev->dev_private;
 dpu_kms = to_dpu_kms(priv->kms);
 if (!dpu_kms) {
  DPU_ERROR("invalid dpu_kms\n");
  return;
 }

 dpu_enc = to_dpu_encoder_virt(drm_enc);
 if (!dpu_enc || !dpu_enc->cur_master) {
  DPU_ERROR("invalid dpu encoder/master\n");
  return;
 }

 if (dpu_enc->cur_master->hw_mdptop &&
   dpu_enc->cur_master->hw_mdptop->ops.reset_ubwc)
  dpu_enc->cur_master->hw_mdptop->ops.reset_ubwc(
    dpu_enc->cur_master->hw_mdptop,
    dpu_kms->catalog);

 _dpu_encoder_update_vsync_source(dpu_enc, &dpu_enc->disp_info);
}
