
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dpu_encoder_phys {int pending_kickoff_wq; TYPE_2__* hw_pp; int parent; int enc_spinlock; int pending_kickoff_cnt; TYPE_1__* parent_ops; } ;
struct TYPE_4__ {scalar_t__ idx; } ;
struct TYPE_3__ {int (* handle_frame_done ) (int ,struct dpu_encoder_phys*,int ) ;} ;


 int DPU_ATRACE_BEGIN (char*) ;
 int DPU_ATRACE_END (char*) ;
 int DPU_ENCODER_FRAME_EVENT_DONE ;
 int DRMID (int ) ;
 scalar_t__ PINGPONG_0 ;
 int atomic_add_unless (int *,int,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (int ,struct dpu_encoder_phys*,int ) ;
 int trace_dpu_enc_phys_cmd_pp_tx_done (int ,scalar_t__,int,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_pp_tx_done_irq(void *arg, int irq_idx)
{
 struct dpu_encoder_phys *phys_enc = arg;
 unsigned long lock_flags;
 int new_cnt;
 u32 event = DPU_ENCODER_FRAME_EVENT_DONE;

 if (!phys_enc || !phys_enc->hw_pp)
  return;

 DPU_ATRACE_BEGIN("pp_done_irq");

 if (phys_enc->parent_ops->handle_frame_done)
  phys_enc->parent_ops->handle_frame_done(phys_enc->parent,
    phys_enc, event);

 spin_lock_irqsave(phys_enc->enc_spinlock, lock_flags);
 new_cnt = atomic_add_unless(&phys_enc->pending_kickoff_cnt, -1, 0);
 spin_unlock_irqrestore(phys_enc->enc_spinlock, lock_flags);

 trace_dpu_enc_phys_cmd_pp_tx_done(DRMID(phys_enc->parent),
       phys_enc->hw_pp->idx - PINGPONG_0,
       new_cnt, event);


 wake_up_all(&phys_enc->pending_kickoff_wq);
 DPU_ATRACE_END("pp_done_irq");
}
