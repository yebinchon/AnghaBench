
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubbub {int dummy; } ;
struct dcn10_hubbub {struct hubbub base; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int hubbub1_construct (struct hubbub*,struct dc_context*,int *,int *,int *) ;
 int hubbub_mask ;
 int hubbub_reg ;
 int hubbub_shift ;
 struct dcn10_hubbub* kzalloc (int,int ) ;

__attribute__((used)) static struct hubbub *dcn10_hubbub_create(struct dc_context *ctx)
{
 struct dcn10_hubbub *dcn10_hubbub = kzalloc(sizeof(struct dcn10_hubbub),
       GFP_KERNEL);

 if (!dcn10_hubbub)
  return ((void*)0);

 hubbub1_construct(&dcn10_hubbub->base, ctx,
   &hubbub_reg,
   &hubbub_shift,
   &hubbub_mask);

 return &dcn10_hubbub->base;
}
