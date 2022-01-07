
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct transform {int dummy; } ;
struct dce_transform {struct transform base; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dce_transform_construct (struct dce_transform*,struct dc_context*,size_t,int *,int *,int *) ;
 struct dce_transform* kzalloc (int,int ) ;
 int xfm_mask ;
 int * xfm_regs ;
 int xfm_shift ;

__attribute__((used)) static struct transform *dce110_transform_create(
 struct dc_context *ctx,
 uint32_t inst)
{
 struct dce_transform *transform =
  kzalloc(sizeof(struct dce_transform), GFP_KERNEL);

 if (!transform)
  return ((void*)0);

 dce_transform_construct(transform, ctx, inst,
    &xfm_regs[inst], &xfm_shift, &xfm_mask);
 return &transform->base;
}
