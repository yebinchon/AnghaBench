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
typedef  int u32 ;
struct fimd_driver_data {int /*<<< orphan*/  timing_base; } ;
struct fimd_context {int /*<<< orphan*/  triggering; int /*<<< orphan*/  irq_flags; void* regs; struct fimd_driver_data* driver_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int SWTRGCMD_ENABLE ; 
 int TRGMODE_ENABLE ; 
 int TRIGCON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct fimd_context* FUNC2 (struct device*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,void*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct fimd_context *ctx = FUNC2(dev);
	const struct fimd_driver_data *driver_data = ctx->driver_data;
	void *timing_base = ctx->regs + driver_data->timing_base;
	u32 reg;

	 /*
	  * Skips triggering if in triggering state, because multiple triggering
	  * requests can cause panel reset.
	  */
	if (FUNC0(&ctx->triggering))
		return;

	/* Enters triggering mode */
	FUNC1(&ctx->triggering, 1);

	reg = FUNC3(timing_base + TRIGCON);
	reg |= (TRGMODE_ENABLE | SWTRGCMD_ENABLE);
	FUNC5(reg, timing_base + TRIGCON);

	/*
	 * Exits triggering mode if vblank is not enabled yet, because when the
	 * VIDINTCON0 register is not set, it can not exit from triggering mode.
	 */
	if (!FUNC4(0, &ctx->irq_flags))
		FUNC1(&ctx->triggering, 0);
}