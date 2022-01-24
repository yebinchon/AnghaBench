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
struct mem_input {int dummy; } ;
struct dce_mem_input {struct mem_input base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dce_mem_input*,struct dc_context*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dce_mem_input* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mi_masks ; 
 int /*<<< orphan*/ * mi_regs ; 
 int /*<<< orphan*/  mi_shifts ; 

__attribute__((used)) static struct mem_input *FUNC3(
	struct dc_context *ctx,
	uint32_t inst)
{
	struct dce_mem_input *dce_mi = FUNC2(sizeof(struct dce_mem_input),
					       GFP_KERNEL);

	if (!dce_mi) {
		FUNC0();
		return NULL;
	}

	FUNC1(dce_mi, ctx, inst, &mi_regs[inst], &mi_shifts, &mi_masks);
	return &dce_mi->base;
}