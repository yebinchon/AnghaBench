
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blnd_crtc_trigger; } ;
struct dce_hwseq {TYPE_1__ wa; int * masks; int * shifts; int * regs; struct dc_context* ctx; } ;
struct TYPE_4__ {int hw_internal_rev; } ;
struct dc_context {TYPE_2__ asic_id; } ;


 scalar_t__ ASIC_REV_IS_STONEY (int ) ;
 int GFP_KERNEL ;
 int hwseq_cz_reg ;
 int hwseq_mask ;
 int hwseq_shift ;
 int hwseq_stoney_reg ;
 struct dce_hwseq* kzalloc (int,int ) ;

__attribute__((used)) static struct dce_hwseq *dce110_hwseq_create(
 struct dc_context *ctx)
{
 struct dce_hwseq *hws = kzalloc(sizeof(struct dce_hwseq), GFP_KERNEL);

 if (hws) {
  hws->ctx = ctx;
  hws->regs = ASIC_REV_IS_STONEY(ctx->asic_id.hw_internal_rev) ?
    &hwseq_stoney_reg : &hwseq_cz_reg;
  hws->shifts = &hwseq_shift;
  hws->masks = &hwseq_mask;
  hws->wa.blnd_crtc_trigger = 1;
 }
 return hws;
}
