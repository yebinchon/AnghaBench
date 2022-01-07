
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource_pool {size_t pipe_count; int ** transforms; int ** mis; int ** timing_generators; int ** opps; } ;
struct dce_transform {int base; } ;
struct dce_mem_input {int base; } ;
struct dce110_timing_generator {int base; } ;
struct dce110_opp {int base; } ;
struct dc_context {TYPE_2__* dc; } ;
struct TYPE_3__ {int max_slave_planes; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int GFP_KERNEL ;
 int dce110_mem_input_v_construct (struct dce_transform*,struct dc_context*) ;
 int dce110_opp_v_construct (struct dce_transform*,struct dc_context*) ;
 int dce110_timing_generator_v_construct (struct dce_transform*,struct dc_context*) ;
 int dce110_transform_v_construct (struct dce_transform*,struct dc_context*) ;
 int kfree (struct dce_transform*) ;
 struct dce_transform* kzalloc (int,int ) ;

__attribute__((used)) static bool underlay_create(struct dc_context *ctx, struct resource_pool *pool)
{
 struct dce110_timing_generator *dce110_tgv = kzalloc(sizeof(*dce110_tgv),
            GFP_KERNEL);
 struct dce_transform *dce110_xfmv = kzalloc(sizeof(*dce110_xfmv),
          GFP_KERNEL);
 struct dce_mem_input *dce110_miv = kzalloc(sizeof(*dce110_miv),
         GFP_KERNEL);
 struct dce110_opp *dce110_oppv = kzalloc(sizeof(*dce110_oppv),
       GFP_KERNEL);

 if (!dce110_tgv || !dce110_xfmv || !dce110_miv || !dce110_oppv) {
  kfree(dce110_tgv);
  kfree(dce110_xfmv);
  kfree(dce110_miv);
  kfree(dce110_oppv);
  return 0;
 }

 dce110_opp_v_construct(dce110_oppv, ctx);

 dce110_timing_generator_v_construct(dce110_tgv, ctx);
 dce110_mem_input_v_construct(dce110_miv, ctx);
 dce110_transform_v_construct(dce110_xfmv, ctx);

 pool->opps[pool->pipe_count] = &dce110_oppv->base;
 pool->timing_generators[pool->pipe_count] = &dce110_tgv->base;
 pool->mis[pool->pipe_count] = &dce110_miv->base;
 pool->transforms[pool->pipe_count] = &dce110_xfmv->base;
 pool->pipe_count++;


 ctx->dc->caps.max_slave_planes = 1;
 ctx->dc->caps.max_slave_planes = 1;

 return 1;
}
