
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_drm_private {int kms; } ;
struct msm_display_info {scalar_t__ intf_type; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dpu_kms {int dummy; } ;
struct dpu_encoder_virt {int disp_info; int vsync_event_work; int idle_timeout; int delayed_off_work; int rc_lock; int vsync_event_timer; int frame_done_timer; int frame_done_timeout_ms; int enc_lock; } ;


 int DPU_DEBUG_ENC (struct dpu_encoder_virt*,char*) ;
 int DPU_ERROR (char*) ;
 scalar_t__ DRM_MODE_ENCODER_DSI ;
 int IDLE_TIMEOUT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int dpu_encoder_destroy (struct drm_encoder*) ;
 int dpu_encoder_frame_done_timeout ;
 int dpu_encoder_off_work ;
 int dpu_encoder_setup_display (struct dpu_encoder_virt*,struct dpu_kms*,struct msm_display_info*) ;
 int dpu_encoder_vsync_event_handler ;
 int dpu_encoder_vsync_event_work_handler ;
 int kthread_init_work (int *,int ) ;
 int memcpy (int *,struct msm_display_info*,int) ;
 int mutex_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 struct dpu_kms* to_dpu_kms (int ) ;

int dpu_encoder_setup(struct drm_device *dev, struct drm_encoder *enc,
  struct msm_display_info *disp_info)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct dpu_kms *dpu_kms = to_dpu_kms(priv->kms);
 struct drm_encoder *drm_enc = ((void*)0);
 struct dpu_encoder_virt *dpu_enc = ((void*)0);
 int ret = 0;

 dpu_enc = to_dpu_encoder_virt(enc);

 mutex_init(&dpu_enc->enc_lock);
 ret = dpu_encoder_setup_display(dpu_enc, dpu_kms, disp_info);
 if (ret)
  goto fail;

 atomic_set(&dpu_enc->frame_done_timeout_ms, 0);
 timer_setup(&dpu_enc->frame_done_timer,
   dpu_encoder_frame_done_timeout, 0);

 if (disp_info->intf_type == DRM_MODE_ENCODER_DSI)
  timer_setup(&dpu_enc->vsync_event_timer,
    dpu_encoder_vsync_event_handler,
    0);


 mutex_init(&dpu_enc->rc_lock);
 INIT_DELAYED_WORK(&dpu_enc->delayed_off_work,
   dpu_encoder_off_work);
 dpu_enc->idle_timeout = IDLE_TIMEOUT;

 kthread_init_work(&dpu_enc->vsync_event_work,
   dpu_encoder_vsync_event_work_handler);

 memcpy(&dpu_enc->disp_info, disp_info, sizeof(*disp_info));

 DPU_DEBUG_ENC(dpu_enc, "created\n");

 return ret;

fail:
 DPU_ERROR("failed to create encoder\n");
 if (drm_enc)
  dpu_encoder_destroy(drm_enc);

 return ret;


}
