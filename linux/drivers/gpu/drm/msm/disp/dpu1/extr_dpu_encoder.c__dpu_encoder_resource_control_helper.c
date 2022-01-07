
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct drm_encoder {TYPE_2__* dev; } ;
struct dpu_kms {TYPE_1__* pdev; } ;
struct dpu_encoder_virt {int cur_master; } ;
struct TYPE_4__ {struct msm_drm_private* dev_private; } ;
struct TYPE_3__ {int dev; } ;


 int DPU_ERROR (char*) ;
 int DRMID (struct drm_encoder*) ;
 int _dpu_encoder_irq_control (struct drm_encoder*,int) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 struct dpu_kms* to_dpu_kms (int ) ;
 int trace_dpu_enc_rc_helper (int ,int) ;

__attribute__((used)) static void _dpu_encoder_resource_control_helper(struct drm_encoder *drm_enc,
  bool enable)
{
 struct msm_drm_private *priv;
 struct dpu_kms *dpu_kms;
 struct dpu_encoder_virt *dpu_enc;

 dpu_enc = to_dpu_encoder_virt(drm_enc);
 priv = drm_enc->dev->dev_private;
 dpu_kms = to_dpu_kms(priv->kms);

 trace_dpu_enc_rc_helper(DRMID(drm_enc), enable);

 if (!dpu_enc->cur_master) {
  DPU_ERROR("encoder master not set\n");
  return;
 }

 if (enable) {

  pm_runtime_get_sync(&dpu_kms->pdev->dev);


  _dpu_encoder_irq_control(drm_enc, 1);

 } else {

  _dpu_encoder_irq_control(drm_enc, 0);


  pm_runtime_put_sync(&dpu_kms->pdev->dev);
 }

}
