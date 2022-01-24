#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource_pool {size_t pipe_count; int /*<<< orphan*/ ** transforms; int /*<<< orphan*/ ** mis; int /*<<< orphan*/ ** timing_generators; int /*<<< orphan*/ ** opps; } ;
struct dce_transform {int /*<<< orphan*/  base; } ;
struct dce_mem_input {int /*<<< orphan*/  base; } ;
struct dce110_timing_generator {int /*<<< orphan*/  base; } ;
struct dce110_opp {int /*<<< orphan*/  base; } ;
struct dc_context {TYPE_2__* dc; } ;
struct TYPE_3__ {int max_slave_planes; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dce_transform*,struct dc_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct dce_transform*,struct dc_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct dce_transform*,struct dc_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct dce_transform*,struct dc_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct dce_transform*) ; 
 struct dce_transform* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct dc_context *ctx, struct resource_pool *pool)
{
	struct dce110_timing_generator *dce110_tgv = FUNC5(sizeof(*dce110_tgv),
							     GFP_KERNEL);
	struct dce_transform *dce110_xfmv = FUNC5(sizeof(*dce110_xfmv),
						    GFP_KERNEL);
	struct dce_mem_input *dce110_miv = FUNC5(sizeof(*dce110_miv),
						   GFP_KERNEL);
	struct dce110_opp *dce110_oppv = FUNC5(sizeof(*dce110_oppv),
						 GFP_KERNEL);

	if (!dce110_tgv || !dce110_xfmv || !dce110_miv || !dce110_oppv) {
		FUNC4(dce110_tgv);
		FUNC4(dce110_xfmv);
		FUNC4(dce110_miv);
		FUNC4(dce110_oppv);
		return false;
	}

	FUNC1(dce110_oppv, ctx);

	FUNC2(dce110_tgv, ctx);
	FUNC0(dce110_miv, ctx);
	FUNC3(dce110_xfmv, ctx);

	pool->opps[pool->pipe_count] = &dce110_oppv->base;
	pool->timing_generators[pool->pipe_count] = &dce110_tgv->base;
	pool->mis[pool->pipe_count] = &dce110_miv->base;
	pool->transforms[pool->pipe_count] = &dce110_xfmv->base;
	pool->pipe_count++;

	/* update the public caps to indicate an underlay is available */
	ctx->dc->caps.max_slave_planes = 1;
	ctx->dc->caps.max_slave_planes = 1;

	return true;
}