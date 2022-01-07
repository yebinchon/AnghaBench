
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys {int intf_idx; struct dpu_encoder_irq* irq; } ;
struct dpu_encoder_irq {scalar_t__ irq_idx; int hw_idx; } ;


 size_t INTR_IDX_UNDERRUN ;
 size_t INTR_IDX_VSYNC ;

__attribute__((used)) static void _dpu_encoder_phys_vid_setup_irq_hw_idx(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_irq *irq;







 irq = &phys_enc->irq[INTR_IDX_VSYNC];
 if (irq->irq_idx < 0)
  irq->hw_idx = phys_enc->intf_idx;

 irq = &phys_enc->irq[INTR_IDX_UNDERRUN];
 if (irq->irq_idx < 0)
  irq->hw_idx = phys_enc->intf_idx;
}
