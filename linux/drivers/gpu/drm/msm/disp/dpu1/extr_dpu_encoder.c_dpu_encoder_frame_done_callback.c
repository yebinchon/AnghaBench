
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {unsigned int num_phys_encs; int crtc_frame_event_cb_data; int (* crtc_frame_event_cb ) (int ,int) ;int frame_done_timer; int frame_done_timeout_ms; int * frame_busy_mask; struct dpu_encoder_phys** phys_encs; } ;
struct dpu_encoder_phys {int intf_idx; } ;


 int DPU_ENCODER_FRAME_EVENT_DONE ;
 int DPU_ENCODER_FRAME_EVENT_ERROR ;
 int DPU_ENCODER_FRAME_EVENT_PANEL_DEAD ;
 int DPU_ENC_RC_EVENT_FRAME_DONE ;
 int DRMID (struct drm_encoder*) ;
 int atomic_set (int *,int ) ;
 int clear_bit (unsigned int,int *) ;
 int del_timer (int *) ;
 int dpu_encoder_resource_control (struct drm_encoder*,int ) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 int trace_dpu_enc_frame_done_cb (int ,unsigned int,int ) ;
 int trace_dpu_enc_frame_done_cb_not_busy (int ,int,int ) ;

__attribute__((used)) static void dpu_encoder_frame_done_callback(
  struct drm_encoder *drm_enc,
  struct dpu_encoder_phys *ready_phys, u32 event)
{
 struct dpu_encoder_virt *dpu_enc = to_dpu_encoder_virt(drm_enc);
 unsigned int i;

 if (event & (DPU_ENCODER_FRAME_EVENT_DONE
   | DPU_ENCODER_FRAME_EVENT_ERROR
   | DPU_ENCODER_FRAME_EVENT_PANEL_DEAD)) {

  if (!dpu_enc->frame_busy_mask[0]) {




   trace_dpu_enc_frame_done_cb_not_busy(DRMID(drm_enc),
     event, ready_phys->intf_idx);
   return;
  }


  for (i = 0; i < dpu_enc->num_phys_encs; i++) {
   if (dpu_enc->phys_encs[i] == ready_phys) {
    trace_dpu_enc_frame_done_cb(DRMID(drm_enc), i,
      dpu_enc->frame_busy_mask[0]);
    clear_bit(i, dpu_enc->frame_busy_mask);
   }
  }

  if (!dpu_enc->frame_busy_mask[0]) {
   atomic_set(&dpu_enc->frame_done_timeout_ms, 0);
   del_timer(&dpu_enc->frame_done_timer);

   dpu_encoder_resource_control(drm_enc,
     DPU_ENC_RC_EVENT_FRAME_DONE);

   if (dpu_enc->crtc_frame_event_cb)
    dpu_enc->crtc_frame_event_cb(
     dpu_enc->crtc_frame_event_cb_data,
     event);
  }
 } else {
  if (dpu_enc->crtc_frame_event_cb)
   dpu_enc->crtc_frame_event_cb(
    dpu_enc->crtc_frame_event_cb_data, event);
 }
}
