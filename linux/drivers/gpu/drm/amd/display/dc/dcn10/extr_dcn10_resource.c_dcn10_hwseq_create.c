
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DEGVIDCN10_253; int false_optc_underflow; int DEGVIDCN10_254; } ;
struct dce_hwseq {TYPE_1__ wa; int * masks; int * shifts; int * regs; struct dc_context* ctx; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int hwseq_mask ;
 int hwseq_reg ;
 int hwseq_shift ;
 struct dce_hwseq* kzalloc (int,int ) ;

__attribute__((used)) static struct dce_hwseq *dcn10_hwseq_create(
 struct dc_context *ctx)
{
 struct dce_hwseq *hws = kzalloc(sizeof(struct dce_hwseq), GFP_KERNEL);

 if (hws) {
  hws->ctx = ctx;
  hws->regs = &hwseq_reg;
  hws->shifts = &hwseq_shift;
  hws->masks = &hwseq_mask;
  hws->wa.DEGVIDCN10_253 = 1;
  hws->wa.false_optc_underflow = 1;
  hws->wa.DEGVIDCN10_254 = 1;
 }
 return hws;
}
