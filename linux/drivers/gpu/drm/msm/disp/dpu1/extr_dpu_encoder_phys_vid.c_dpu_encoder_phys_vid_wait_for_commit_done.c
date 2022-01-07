
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* get_flush_register ) (struct dpu_hw_ctl*) ;} ;
struct dpu_hw_ctl {TYPE_1__ ops; } ;
struct dpu_encoder_phys {int pending_kickoff_wq; struct dpu_hw_ctl* hw_ctl; } ;


 int DPU_ERROR (char*) ;
 int ETIMEDOUT ;
 int msecs_to_jiffies (int) ;
 scalar_t__ stub1 (struct dpu_hw_ctl*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int dpu_encoder_phys_vid_wait_for_commit_done(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_hw_ctl *hw_ctl = phys_enc->hw_ctl;
 int ret;

 if (!hw_ctl)
  return 0;

 ret = wait_event_timeout(phys_enc->pending_kickoff_wq,
  (hw_ctl->ops.get_flush_register(hw_ctl) == 0),
  msecs_to_jiffies(50));
 if (ret <= 0) {
  DPU_ERROR("vblank timeout\n");
  return -ETIMEDOUT;
 }

 return 0;
}
