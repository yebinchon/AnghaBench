
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_smu_funcs {int dummy; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dm_pp_get_funcs (struct dc_context*,struct pp_smu_funcs*) ;
 struct pp_smu_funcs* kzalloc (int,int ) ;

__attribute__((used)) static struct pp_smu_funcs *dcn10_pp_smu_create(struct dc_context *ctx)
{
 struct pp_smu_funcs *pp_smu = kzalloc(sizeof(*pp_smu), GFP_KERNEL);

 if (!pp_smu)
  return pp_smu;

 dm_pp_get_funcs(ctx, pp_smu);
 return pp_smu;
}
