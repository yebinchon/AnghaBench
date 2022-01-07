
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct mem_input {int dummy; } ;
struct dce_mem_input {struct mem_input base; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int dce120_mem_input_construct (struct dce_mem_input*,struct dc_context*,size_t,int *,int *,int *) ;
 struct dce_mem_input* kzalloc (int,int ) ;
 int mi_masks ;
 int * mi_regs ;
 int mi_shifts ;

__attribute__((used)) static struct mem_input *dce120_mem_input_create(
 struct dc_context *ctx,
 uint32_t inst)
{
 struct dce_mem_input *dce_mi = kzalloc(sizeof(struct dce_mem_input),
            GFP_KERNEL);

 if (!dce_mi) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 dce120_mem_input_construct(dce_mi, ctx, inst, &mi_regs[inst], &mi_shifts, &mi_masks);
 return &dce_mi->base;
}
