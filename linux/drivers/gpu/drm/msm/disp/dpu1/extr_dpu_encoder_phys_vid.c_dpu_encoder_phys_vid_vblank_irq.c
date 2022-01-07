
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* get_flush_register ) (struct dpu_hw_ctl*) ;int (* get_pending_flush ) (struct dpu_hw_ctl*) ;} ;
struct dpu_hw_ctl {TYPE_1__ ops; } ;
struct dpu_encoder_phys {int parent; TYPE_2__* parent_ops; int pending_kickoff_wq; int enc_spinlock; int pending_kickoff_cnt; struct dpu_hw_ctl* hw_ctl; } ;
struct TYPE_4__ {int (* handle_frame_done ) (int ,struct dpu_encoder_phys*,int ) ;int (* handle_vblank_virt ) (int ,struct dpu_encoder_phys*) ;} ;


 int DPU_ATRACE_BEGIN (char*) ;
 int DPU_ATRACE_END (char*) ;
 int DPU_ENCODER_FRAME_EVENT_DONE ;
 int atomic_add_unless (int *,int,int ) ;
 int atomic_read (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (int ,struct dpu_encoder_phys*) ;
 int stub2 (struct dpu_hw_ctl*) ;
 int stub3 (struct dpu_hw_ctl*) ;
 int stub4 (int ,struct dpu_encoder_phys*,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void dpu_encoder_phys_vid_vblank_irq(void *arg, int irq_idx)
{
 struct dpu_encoder_phys *phys_enc = arg;
 struct dpu_hw_ctl *hw_ctl;
 unsigned long lock_flags;
 u32 flush_register = 0;
 int new_cnt = -1, old_cnt = -1;

 if (!phys_enc)
  return;

 hw_ctl = phys_enc->hw_ctl;
 if (!hw_ctl)
  return;

 DPU_ATRACE_BEGIN("vblank_irq");

 if (phys_enc->parent_ops->handle_vblank_virt)
  phys_enc->parent_ops->handle_vblank_virt(phys_enc->parent,
    phys_enc);

 old_cnt = atomic_read(&phys_enc->pending_kickoff_cnt);






 spin_lock_irqsave(phys_enc->enc_spinlock, lock_flags);
 if (hw_ctl && hw_ctl->ops.get_flush_register)
  flush_register = hw_ctl->ops.get_flush_register(hw_ctl);

 if (!(flush_register & hw_ctl->ops.get_pending_flush(hw_ctl)))
  new_cnt = atomic_add_unless(&phys_enc->pending_kickoff_cnt,
    -1, 0);
 spin_unlock_irqrestore(phys_enc->enc_spinlock, lock_flags);


 wake_up_all(&phys_enc->pending_kickoff_wq);

 phys_enc->parent_ops->handle_frame_done(phys_enc->parent, phys_enc,
   DPU_ENCODER_FRAME_EVENT_DONE);

 DPU_ATRACE_END("vblank_irq");
}
