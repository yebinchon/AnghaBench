
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce110_clk_src_regs {int dummy; } ;
struct clock_source {int dp_clk_src; } ;
struct dce110_clk_src {struct clock_source base; } ;
struct dc_context {int dummy; } ;
struct dc_bios {int dummy; } ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int cs_mask ;
 int cs_shift ;
 scalar_t__ dcn20_clk_src_construct (struct dce110_clk_src*,struct dc_context*,struct dc_bios*,int,struct dce110_clk_src_regs const*,int *,int *) ;
 struct dce110_clk_src* kzalloc (int,int ) ;

__attribute__((used)) static struct clock_source *dcn21_clock_source_create(
  struct dc_context *ctx,
  struct dc_bios *bios,
  enum clock_source_id id,
  const struct dce110_clk_src_regs *regs,
  bool dp_clk_src)
{
 struct dce110_clk_src *clk_src =
  kzalloc(sizeof(struct dce110_clk_src), GFP_KERNEL);

 if (!clk_src)
  return ((void*)0);

 if (dcn20_clk_src_construct(clk_src, ctx, bios, id,
   regs, &cs_shift, &cs_mask)) {
  clk_src->base.dp_clk_src = dp_clk_src;
  return &clk_src->base;
 }

 BREAK_TO_DEBUGGER();
 return ((void*)0);
}
