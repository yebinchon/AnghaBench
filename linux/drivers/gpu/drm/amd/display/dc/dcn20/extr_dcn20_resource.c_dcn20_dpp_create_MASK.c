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
typedef  size_t uint32_t ;
struct dpp {int dummy; } ;
struct dcn20_dpp {struct dpp base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dcn20_dpp*,struct dc_context*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dcn20_dpp*) ; 
 struct dcn20_dpp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tf_mask ; 
 int /*<<< orphan*/ * tf_regs ; 
 int /*<<< orphan*/  tf_shift ; 

struct dpp *FUNC4(
	struct dc_context *ctx,
	uint32_t inst)
{
	struct dcn20_dpp *dpp =
		FUNC3(sizeof(struct dcn20_dpp), GFP_KERNEL);

	if (!dpp)
		return NULL;

	if (FUNC1(dpp, ctx, inst,
			&tf_regs[inst], &tf_shift, &tf_mask))
		return &dpp->base;

	FUNC0();
	FUNC2(dpp);
	return NULL;
}