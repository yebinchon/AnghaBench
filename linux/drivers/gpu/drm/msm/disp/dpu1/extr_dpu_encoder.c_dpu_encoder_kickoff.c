
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_encoder {TYPE_2__* crtc; } ;
struct TYPE_8__ {scalar_t__ intf_type; } ;
struct dpu_encoder_virt {unsigned int num_phys_encs; int vsync_event_timer; TYPE_4__ disp_info; struct dpu_encoder_phys** phys_encs; int frame_done_timer; int frame_done_timeout_ms; } ;
struct TYPE_7__ {int (* handle_post_kickoff ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {TYPE_3__ ops; } ;
typedef int ktime_t ;
struct TYPE_6__ {TYPE_1__* state; } ;
struct TYPE_5__ {int adjusted_mode; } ;


 int DPU_ATRACE_BEGIN (char*) ;
 int DPU_ATRACE_END (char*) ;
 int DPU_ENCODER_FRAME_DONE_TIMEOUT_FRAMES ;
 int DRMID (struct drm_encoder*) ;
 scalar_t__ DRM_MODE_ENCODER_DSI ;
 int _dpu_encoder_kickoff_phys (struct dpu_encoder_virt*) ;
 int atomic_set (int *,unsigned long) ;
 int dpu_encoder_vsync_time (struct drm_encoder*,int *) ;
 int drm_mode_vrefresh (int *) ;
 scalar_t__ jiffies ;
 int ktime_to_ms (int ) ;
 int ktime_to_ns (int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;
 scalar_t__ nsecs_to_jiffies (int ) ;
 int stub1 (struct dpu_encoder_phys*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 int trace_dpu_enc_early_kickoff (int ,int ) ;
 int trace_dpu_enc_kickoff (int ) ;

void dpu_encoder_kickoff(struct drm_encoder *drm_enc)
{
 struct dpu_encoder_virt *dpu_enc;
 struct dpu_encoder_phys *phys;
 ktime_t wakeup_time;
 unsigned long timeout_ms;
 unsigned int i;

 DPU_ATRACE_BEGIN("encoder_kickoff");
 dpu_enc = to_dpu_encoder_virt(drm_enc);

 trace_dpu_enc_kickoff(DRMID(drm_enc));

 timeout_ms = DPU_ENCODER_FRAME_DONE_TIMEOUT_FRAMES * 1000 /
   drm_mode_vrefresh(&drm_enc->crtc->state->adjusted_mode);

 atomic_set(&dpu_enc->frame_done_timeout_ms, timeout_ms);
 mod_timer(&dpu_enc->frame_done_timer,
   jiffies + msecs_to_jiffies(timeout_ms));


 _dpu_encoder_kickoff_phys(dpu_enc);


 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  phys = dpu_enc->phys_encs[i];
  if (phys && phys->ops.handle_post_kickoff)
   phys->ops.handle_post_kickoff(phys);
 }

 if (dpu_enc->disp_info.intf_type == DRM_MODE_ENCODER_DSI &&
   !dpu_encoder_vsync_time(drm_enc, &wakeup_time)) {
  trace_dpu_enc_early_kickoff(DRMID(drm_enc),
         ktime_to_ms(wakeup_time));
  mod_timer(&dpu_enc->vsync_event_timer,
    nsecs_to_jiffies(ktime_to_ns(wakeup_time)));
 }

 DPU_ATRACE_END("encoder_kickoff");
}
