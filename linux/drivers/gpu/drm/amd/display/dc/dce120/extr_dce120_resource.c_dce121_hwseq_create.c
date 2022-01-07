
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int * masks; int * shifts; int * regs; struct dc_context* ctx; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dce121_hwseq_mask ;
 int dce121_hwseq_reg ;
 int dce121_hwseq_shift ;
 struct dce_hwseq* kzalloc (int,int ) ;

__attribute__((used)) static struct dce_hwseq *dce121_hwseq_create(
 struct dc_context *ctx)
{
 struct dce_hwseq *hws = kzalloc(sizeof(struct dce_hwseq), GFP_KERNEL);

 if (hws) {
  hws->ctx = ctx;
  hws->regs = &dce121_hwseq_reg;
  hws->shifts = &dce121_hwseq_shift;
  hws->masks = &dce121_hwseq_mask;
 }
 return hws;
}
