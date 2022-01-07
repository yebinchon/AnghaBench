
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hubbub {int dummy; } ;
struct dcn20_vmid {int * masks; int * shifts; int * regs; struct dc_context* ctx; } ;
struct dcn20_hubbub {struct hubbub base; struct dcn20_vmid* vmid; } ;
struct dc_context {int dummy; } ;
struct TYPE_2__ {int num_vmid; } ;


 int GFP_KERNEL ;
 int hubbub2_construct (struct dcn20_hubbub*,struct dc_context*,int *,int *,int *) ;
 int hubbub_mask ;
 int hubbub_reg ;
 int hubbub_shift ;
 struct dcn20_hubbub* kzalloc (int,int ) ;
 TYPE_1__ res_cap_nv10 ;
 int vmid_masks ;
 int * vmid_regs ;
 int vmid_shifts ;

struct hubbub *dcn20_hubbub_create(struct dc_context *ctx)
{
 int i;
 struct dcn20_hubbub *hubbub = kzalloc(sizeof(struct dcn20_hubbub),
       GFP_KERNEL);

 if (!hubbub)
  return ((void*)0);

 hubbub2_construct(hubbub, ctx,
   &hubbub_reg,
   &hubbub_shift,
   &hubbub_mask);

 for (i = 0; i < res_cap_nv10.num_vmid; i++) {
  struct dcn20_vmid *vmid = &hubbub->vmid[i];

  vmid->ctx = ctx;

  vmid->regs = &vmid_regs[i];
  vmid->shifts = &vmid_shifts;
  vmid->masks = &vmid_masks;
 }

 return &hubbub->base;
}
