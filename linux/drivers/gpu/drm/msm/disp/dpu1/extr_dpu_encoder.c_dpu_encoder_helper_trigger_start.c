
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* trigger_start ) (struct dpu_hw_ctl*) ;} ;
struct dpu_hw_ctl {int idx; TYPE_1__ ops; } ;
struct dpu_encoder_phys {int parent; struct dpu_hw_ctl* hw_ctl; } ;


 int DPU_ERROR (char*) ;
 int DRMID (int ) ;
 int stub1 (struct dpu_hw_ctl*) ;
 int trace_dpu_enc_trigger_start (int ,int ) ;

void dpu_encoder_helper_trigger_start(struct dpu_encoder_phys *phys_enc)
{
 struct dpu_hw_ctl *ctl;

 if (!phys_enc) {
  DPU_ERROR("invalid encoder\n");
  return;
 }

 ctl = phys_enc->hw_ctl;
 if (ctl && ctl->ops.trigger_start) {
  ctl->ops.trigger_start(ctl);
  trace_dpu_enc_trigger_start(DRMID(phys_enc->parent), ctl->idx);
 }
}
