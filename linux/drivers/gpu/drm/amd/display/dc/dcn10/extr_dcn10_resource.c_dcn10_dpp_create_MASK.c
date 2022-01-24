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
struct dcn10_dpp {struct dpp base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dcn10_dpp*,struct dc_context*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dcn10_dpp* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tf_mask ; 
 int /*<<< orphan*/ * tf_regs ; 
 int /*<<< orphan*/  tf_shift ; 

__attribute__((used)) static struct dpp *FUNC2(
	struct dc_context *ctx,
	uint32_t inst)
{
	struct dcn10_dpp *dpp =
		FUNC1(sizeof(struct dcn10_dpp), GFP_KERNEL);

	if (!dpp)
		return NULL;

	FUNC0(dpp, ctx, inst,
		       &tf_regs[inst], &tf_shift, &tf_mask);
	return &dpp->base;
}