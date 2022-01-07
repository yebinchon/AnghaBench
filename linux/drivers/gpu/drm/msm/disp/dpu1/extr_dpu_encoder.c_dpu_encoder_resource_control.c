
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct msm_drm_private {int wq; } ;
struct drm_encoder {int crtc; TYPE_1__* dev; } ;
struct TYPE_4__ {int capabilities; } ;
struct dpu_encoder_virt {int rc_state; int idle_pc_supported; int rc_lock; int * frame_busy_mask; int delayed_off_work; int idle_timeout; TYPE_2__ disp_info; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;


 int DPU_DEBUG_ENC (struct dpu_encoder_virt*,char*,int) ;





 int DPU_ENC_RC_STATE_IDLE ;
 int DPU_ENC_RC_STATE_OFF ;
 int DPU_ENC_RC_STATE_ON ;
 int DPU_ENC_RC_STATE_PRE_OFF ;
 int DPU_ERROR (char*) ;
 int DRMID (struct drm_encoder*) ;
 int DRM_DEBUG_KMS (char*,int ,...) ;
 int DRM_ERROR (char*,int ,int,...) ;
 int EINVAL ;
 int MSM_DISPLAY_CAP_VID_MODE ;
 int _dpu_encoder_irq_control (struct drm_encoder*,int) ;
 int _dpu_encoder_resource_control_helper (struct drm_encoder*,int) ;
 int cancel_delayed_work_sync (int *) ;
 int dpu_crtc_frame_pending (int ) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 int trace_dpu_enc_rc (int ,int,int ,int ,char*) ;

__attribute__((used)) static int dpu_encoder_resource_control(struct drm_encoder *drm_enc,
  u32 sw_event)
{
 struct dpu_encoder_virt *dpu_enc;
 struct msm_drm_private *priv;
 bool is_vid_mode = 0;

 if (!drm_enc || !drm_enc->dev || !drm_enc->dev->dev_private ||
   !drm_enc->crtc) {
  DPU_ERROR("invalid parameters\n");
  return -EINVAL;
 }
 dpu_enc = to_dpu_encoder_virt(drm_enc);
 priv = drm_enc->dev->dev_private;
 is_vid_mode = dpu_enc->disp_info.capabilities &
      MSM_DISPLAY_CAP_VID_MODE;





 if (!dpu_enc->idle_pc_supported &&
   (sw_event != 130 &&
   sw_event != 128 &&
   sw_event != 129))
  return 0;

 trace_dpu_enc_rc(DRMID(drm_enc), sw_event, dpu_enc->idle_pc_supported,
    dpu_enc->rc_state, "begin");

 switch (sw_event) {
 case 130:

  if (cancel_delayed_work_sync(&dpu_enc->delayed_off_work))
   DPU_DEBUG_ENC(dpu_enc, "sw_event:%d, work cancelled\n",
     sw_event);

  mutex_lock(&dpu_enc->rc_lock);


  if (dpu_enc->rc_state == DPU_ENC_RC_STATE_ON) {
   DRM_DEBUG_KMS("id;%u, sw_event:%d, rc in ON state\n",
          DRMID(drm_enc), sw_event);
   mutex_unlock(&dpu_enc->rc_lock);
   return 0;
  } else if (dpu_enc->rc_state != DPU_ENC_RC_STATE_OFF &&
    dpu_enc->rc_state != DPU_ENC_RC_STATE_IDLE) {
   DRM_DEBUG_KMS("id;%u, sw_event:%d, rc in state %d\n",
          DRMID(drm_enc), sw_event,
          dpu_enc->rc_state);
   mutex_unlock(&dpu_enc->rc_lock);
   return -EINVAL;
  }

  if (is_vid_mode && dpu_enc->rc_state == DPU_ENC_RC_STATE_IDLE)
   _dpu_encoder_irq_control(drm_enc, 1);
  else
   _dpu_encoder_resource_control_helper(drm_enc, 1);

  dpu_enc->rc_state = DPU_ENC_RC_STATE_ON;

  trace_dpu_enc_rc(DRMID(drm_enc), sw_event,
     dpu_enc->idle_pc_supported, dpu_enc->rc_state,
     "kickoff");

  mutex_unlock(&dpu_enc->rc_lock);
  break;

 case 131:






  if (dpu_enc->rc_state != DPU_ENC_RC_STATE_ON) {
   DRM_DEBUG_KMS("id:%d, sw_event:%d,rc:%d-unexpected\n",
          DRMID(drm_enc), sw_event,
          dpu_enc->rc_state);
   return -EINVAL;
  }





  if (dpu_crtc_frame_pending(drm_enc->crtc) > 1) {
   DRM_DEBUG_KMS("id:%d skip schedule work\n",
          DRMID(drm_enc));
   return 0;
  }

  queue_delayed_work(priv->wq, &dpu_enc->delayed_off_work,
       msecs_to_jiffies(dpu_enc->idle_timeout));

  trace_dpu_enc_rc(DRMID(drm_enc), sw_event,
     dpu_enc->idle_pc_supported, dpu_enc->rc_state,
     "frame done");
  break;

 case 129:

  if (cancel_delayed_work_sync(&dpu_enc->delayed_off_work))
   DPU_DEBUG_ENC(dpu_enc, "sw_event:%d, work cancelled\n",
     sw_event);

  mutex_lock(&dpu_enc->rc_lock);

  if (is_vid_mode &&
     dpu_enc->rc_state == DPU_ENC_RC_STATE_IDLE) {
   _dpu_encoder_irq_control(drm_enc, 1);
  }

  else if (dpu_enc->rc_state == DPU_ENC_RC_STATE_OFF ||
    dpu_enc->rc_state == DPU_ENC_RC_STATE_IDLE) {
   DRM_DEBUG_KMS("id:%u, sw_event:%d, rc in %d state\n",
          DRMID(drm_enc), sw_event,
          dpu_enc->rc_state);
   mutex_unlock(&dpu_enc->rc_lock);
   return 0;
  }

  dpu_enc->rc_state = DPU_ENC_RC_STATE_PRE_OFF;

  trace_dpu_enc_rc(DRMID(drm_enc), sw_event,
     dpu_enc->idle_pc_supported, dpu_enc->rc_state,
     "pre stop");

  mutex_unlock(&dpu_enc->rc_lock);
  break;

 case 128:
  mutex_lock(&dpu_enc->rc_lock);


  if (dpu_enc->rc_state == DPU_ENC_RC_STATE_OFF) {
   DRM_DEBUG_KMS("id: %u, sw_event:%d, rc in OFF state\n",
          DRMID(drm_enc), sw_event);
   mutex_unlock(&dpu_enc->rc_lock);
   return 0;
  } else if (dpu_enc->rc_state == DPU_ENC_RC_STATE_ON) {
   DRM_ERROR("id: %u, sw_event:%d, rc in state %d\n",
      DRMID(drm_enc), sw_event, dpu_enc->rc_state);
   mutex_unlock(&dpu_enc->rc_lock);
   return -EINVAL;
  }





  if (dpu_enc->rc_state == DPU_ENC_RC_STATE_PRE_OFF)
   _dpu_encoder_resource_control_helper(drm_enc, 0);

  dpu_enc->rc_state = DPU_ENC_RC_STATE_OFF;

  trace_dpu_enc_rc(DRMID(drm_enc), sw_event,
     dpu_enc->idle_pc_supported, dpu_enc->rc_state,
     "stop");

  mutex_unlock(&dpu_enc->rc_lock);
  break;

 case 132:
  mutex_lock(&dpu_enc->rc_lock);

  if (dpu_enc->rc_state != DPU_ENC_RC_STATE_ON) {
   DRM_ERROR("id: %u, sw_event:%d, rc:%d !ON state\n",
      DRMID(drm_enc), sw_event, dpu_enc->rc_state);
   mutex_unlock(&dpu_enc->rc_lock);
   return 0;
  }





  if (dpu_enc->frame_busy_mask[0]) {
   DRM_ERROR("id:%u, sw_event:%d, rc:%d frame pending\n",
      DRMID(drm_enc), sw_event, dpu_enc->rc_state);
   mutex_unlock(&dpu_enc->rc_lock);
   return 0;
  }

  if (is_vid_mode)
   _dpu_encoder_irq_control(drm_enc, 0);
  else
   _dpu_encoder_resource_control_helper(drm_enc, 0);

  dpu_enc->rc_state = DPU_ENC_RC_STATE_IDLE;

  trace_dpu_enc_rc(DRMID(drm_enc), sw_event,
     dpu_enc->idle_pc_supported, dpu_enc->rc_state,
     "idle");

  mutex_unlock(&dpu_enc->rc_lock);
  break;

 default:
  DRM_ERROR("id:%u, unexpected sw_event: %d\n", DRMID(drm_enc),
     sw_event);
  trace_dpu_enc_rc(DRMID(drm_enc), sw_event,
     dpu_enc->idle_pc_supported, dpu_enc->rc_state,
     "error");
  break;
 }

 trace_dpu_enc_rc(DRMID(drm_enc), sw_event,
    dpu_enc->idle_pc_supported, dpu_enc->rc_state,
    "end");
 return 0;
}
