#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dce110_clk_src_regs {int dummy; } ;
struct clock_source {int dp_clk_src; } ;
struct dce110_clk_src {struct clock_source base; } ;
struct dc_context {int dummy; } ;
struct dc_bios {int dummy; } ;
typedef  enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cs_mask ; 
 int /*<<< orphan*/  cs_shift ; 
 scalar_t__ FUNC1 (struct dce110_clk_src*,struct dc_context*,struct dc_bios*,int,struct dce110_clk_src_regs const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dce110_clk_src*) ; 
 struct dce110_clk_src* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct clock_source *FUNC4(
	struct dc_context *ctx,
	struct dc_bios *bios,
	enum clock_source_id id,
	const struct dce110_clk_src_regs *regs,
	bool dp_clk_src)
{
	struct dce110_clk_src *clk_src =
		FUNC3(sizeof(struct dce110_clk_src), GFP_KERNEL);

	if (!clk_src)
		return NULL;

	if (FUNC1(clk_src, ctx, bios, id,
			regs, &cs_shift, &cs_mask)) {
		clk_src->base.dp_clk_src = dp_clk_src;
		return &clk_src->base;
	}

	FUNC2(clk_src);
	FUNC0();
	return NULL;
}