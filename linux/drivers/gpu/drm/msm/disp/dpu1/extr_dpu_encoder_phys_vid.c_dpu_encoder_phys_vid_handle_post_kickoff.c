
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpu_encoder_phys {scalar_t__ enable_state; int enc_spinlock; TYPE_2__* hw_intf; int parent; } ;
struct TYPE_3__ {int (* enable_timing ) (TYPE_2__*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; scalar_t__ idx; } ;


 scalar_t__ DPU_ENC_ENABLED ;
 scalar_t__ DPU_ENC_ENABLING ;
 int DRMID (int ) ;
 scalar_t__ INTF_0 ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_2__*,int) ;
 int trace_dpu_enc_phys_vid_post_kickoff (int ,scalar_t__) ;

__attribute__((used)) static void dpu_encoder_phys_vid_handle_post_kickoff(
  struct dpu_encoder_phys *phys_enc)
{
 unsigned long lock_flags;





 if (phys_enc->enable_state == DPU_ENC_ENABLING) {
  trace_dpu_enc_phys_vid_post_kickoff(DRMID(phys_enc->parent),
        phys_enc->hw_intf->idx - INTF_0);
  spin_lock_irqsave(phys_enc->enc_spinlock, lock_flags);
  phys_enc->hw_intf->ops.enable_timing(phys_enc->hw_intf, 1);
  spin_unlock_irqrestore(phys_enc->enc_spinlock, lock_flags);
  phys_enc->enable_state = DPU_ENC_ENABLED;
 }
}
