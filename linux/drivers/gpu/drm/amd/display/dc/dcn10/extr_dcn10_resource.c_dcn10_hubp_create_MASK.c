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
struct hubp {int dummy; } ;
struct dcn10_hubp {struct hubp base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dcn10_hubp*,struct dc_context*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hubp_mask ; 
 int /*<<< orphan*/ * hubp_regs ; 
 int /*<<< orphan*/  hubp_shift ; 
 struct dcn10_hubp* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hubp *FUNC2(
	struct dc_context *ctx,
	uint32_t inst)
{
	struct dcn10_hubp *hubp1 =
		FUNC1(sizeof(struct dcn10_hubp), GFP_KERNEL);

	if (!hubp1)
		return NULL;

	FUNC0(hubp1, ctx, inst,
			     &hubp_regs[inst], &hubp_shift, &hubp_mask);
	return &hubp1->base;
}