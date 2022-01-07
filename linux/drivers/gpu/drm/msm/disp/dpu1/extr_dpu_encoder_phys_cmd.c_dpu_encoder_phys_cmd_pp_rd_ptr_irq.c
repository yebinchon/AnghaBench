
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_encoder_phys_cmd {int pending_vblank_wq; int pending_vblank_cnt; } ;
struct dpu_encoder_phys {int parent; TYPE_1__* parent_ops; int hw_pp; } ;
struct TYPE_2__ {int (* handle_vblank_virt ) (int ,struct dpu_encoder_phys*) ;} ;


 int DPU_ATRACE_BEGIN (char*) ;
 int DPU_ATRACE_END (char*) ;
 int atomic_add_unless (int *,int,int ) ;
 int stub1 (int ,struct dpu_encoder_phys*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_pp_rd_ptr_irq(void *arg, int irq_idx)
{
 struct dpu_encoder_phys *phys_enc = arg;
 struct dpu_encoder_phys_cmd *cmd_enc;

 if (!phys_enc || !phys_enc->hw_pp)
  return;

 DPU_ATRACE_BEGIN("rd_ptr_irq");
 cmd_enc = to_dpu_encoder_phys_cmd(phys_enc);

 if (phys_enc->parent_ops->handle_vblank_virt)
  phys_enc->parent_ops->handle_vblank_virt(phys_enc->parent,
   phys_enc);

 atomic_add_unless(&cmd_enc->pending_vblank_cnt, -1, 0);
 wake_up_all(&cmd_enc->pending_vblank_wq);
 DPU_ATRACE_END("rd_ptr_irq");
}
