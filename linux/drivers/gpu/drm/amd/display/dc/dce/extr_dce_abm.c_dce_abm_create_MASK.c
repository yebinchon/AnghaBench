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
struct dce_abm_shift {int dummy; } ;
struct dce_abm_registers {int dummy; } ;
struct dce_abm_mask {int dummy; } ;
struct abm {int /*<<< orphan*/ * funcs; } ;
struct dce_abm {struct abm base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dce_abm*,struct dc_context*,struct dce_abm_registers const*,struct dce_abm_shift const*,struct dce_abm_mask const*) ; 
 int /*<<< orphan*/  dce_funcs ; 
 struct dce_abm* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct abm *FUNC3(
	struct dc_context *ctx,
	const struct dce_abm_registers *regs,
	const struct dce_abm_shift *abm_shift,
	const struct dce_abm_mask *abm_mask)
{
	struct dce_abm *abm_dce = FUNC2(sizeof(*abm_dce), GFP_KERNEL);

	if (abm_dce == NULL) {
		FUNC0();
		return NULL;
	}

	FUNC1(abm_dce, ctx, regs, abm_shift, abm_mask);

	abm_dce->base.funcs = &dce_funcs;

	return &abm_dce->base;
}