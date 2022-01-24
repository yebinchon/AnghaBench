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
struct input_pixel_processor {int dummy; } ;
struct dce_ipp {struct input_pixel_processor base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dce_ipp*,struct dc_context*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipp_mask ; 
 int /*<<< orphan*/ * ipp_regs ; 
 int /*<<< orphan*/  ipp_shift ; 
 struct dce_ipp* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct input_pixel_processor *FUNC3(
	struct dc_context *ctx, uint32_t inst)
{
	struct dce_ipp *ipp = FUNC2(sizeof(struct dce_ipp), GFP_KERNEL);

	if (!ipp) {
		FUNC0();
		return NULL;
	}

	FUNC1(ipp, ctx, inst,
			&ipp_regs[inst], &ipp_shift, &ipp_mask);
	return &ipp->base;
}