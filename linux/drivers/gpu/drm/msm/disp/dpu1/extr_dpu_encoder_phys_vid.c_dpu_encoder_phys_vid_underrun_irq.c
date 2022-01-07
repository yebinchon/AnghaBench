
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_encoder_phys {int parent; TYPE_1__* parent_ops; } ;
struct TYPE_2__ {int (* handle_underrun_virt ) (int ,struct dpu_encoder_phys*) ;} ;


 int stub1 (int ,struct dpu_encoder_phys*) ;

__attribute__((used)) static void dpu_encoder_phys_vid_underrun_irq(void *arg, int irq_idx)
{
 struct dpu_encoder_phys *phys_enc = arg;

 if (!phys_enc)
  return;

 if (phys_enc->parent_ops->handle_underrun_virt)
  phys_enc->parent_ops->handle_underrun_virt(phys_enc->parent,
   phys_enc);
}
