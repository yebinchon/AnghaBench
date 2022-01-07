
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_encoder_phys {int vblank_refcount; TYPE_1__* hw_intf; int parent; } ;
struct TYPE_2__ {scalar_t__ idx; } ;


 int DRMID (int ) ;
 scalar_t__ INTF_0 ;
 int INTR_IDX_UNDERRUN ;
 int atomic_read (int *) ;
 int dpu_encoder_helper_register_irq (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_helper_unregister_irq (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_phys_vid_control_vblank_irq (struct dpu_encoder_phys*,int) ;
 int trace_dpu_enc_phys_vid_irq_ctrl (int ,scalar_t__,int,int ) ;

__attribute__((used)) static void dpu_encoder_phys_vid_irq_control(struct dpu_encoder_phys *phys_enc,
  bool enable)
{
 int ret;

 if (!phys_enc)
  return;

 trace_dpu_enc_phys_vid_irq_ctrl(DRMID(phys_enc->parent),
       phys_enc->hw_intf->idx - INTF_0,
       enable,
       atomic_read(&phys_enc->vblank_refcount));

 if (enable) {
  ret = dpu_encoder_phys_vid_control_vblank_irq(phys_enc, 1);
  if (ret)
   return;

  dpu_encoder_helper_register_irq(phys_enc, INTR_IDX_UNDERRUN);
 } else {
  dpu_encoder_phys_vid_control_vblank_irq(phys_enc, 0);
  dpu_encoder_helper_unregister_irq(phys_enc, INTR_IDX_UNDERRUN);
 }
}
