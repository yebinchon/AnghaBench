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
struct dcn21_hubp {struct hubp base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dcn21_hubp*,struct dc_context*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hubp_mask ; 
 int /*<<< orphan*/ * hubp_regs ; 
 int /*<<< orphan*/  hubp_shift ; 
 int /*<<< orphan*/  FUNC2 (struct dcn21_hubp*) ; 
 struct dcn21_hubp* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hubp *FUNC4(
	struct dc_context *ctx,
	uint32_t inst)
{
	struct dcn21_hubp *hubp21 =
		FUNC3(sizeof(struct dcn21_hubp), GFP_KERNEL);

	if (!hubp21)
		return NULL;

	if (FUNC1(hubp21, ctx, inst,
			&hubp_regs[inst], &hubp_shift, &hubp_mask))
		return &hubp21->base;

	FUNC0();
	FUNC2(hubp21);
	return NULL;
}