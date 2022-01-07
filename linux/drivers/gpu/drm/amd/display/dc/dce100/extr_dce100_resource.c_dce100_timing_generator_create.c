
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct dce110_timing_generator_offsets {int dummy; } ;
struct dce110_timing_generator {struct timing_generator base; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dce110_timing_generator_construct (struct dce110_timing_generator*,struct dc_context*,int ,struct dce110_timing_generator_offsets const*) ;
 struct dce110_timing_generator* kzalloc (int,int ) ;

__attribute__((used)) static struct timing_generator *dce100_timing_generator_create(
  struct dc_context *ctx,
  uint32_t instance,
  const struct dce110_timing_generator_offsets *offsets)
{
 struct dce110_timing_generator *tg110 =
  kzalloc(sizeof(struct dce110_timing_generator), GFP_KERNEL);

 if (!tg110)
  return ((void*)0);

 dce110_timing_generator_construct(tg110, ctx, instance, offsets);
 return &tg110->base;
}
