#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mixer_context {int /*<<< orphan*/  reg_slock; TYPE_1__* crtc; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MXR_BIT_INTERLACE ; 
 int MXR_INT_CLEAR_VSYNC ; 
 int /*<<< orphan*/  MXR_INT_STATUS ; 
 int MXR_INT_STATUS_VSYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mixer_context*) ; 
 int FUNC2 (struct mixer_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mixer_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *arg)
{
	struct mixer_context *ctx = arg;
	u32 val;

	FUNC4(&ctx->reg_slock);

	/* read interrupt status for handling and clearing flags for VSYNC */
	val = FUNC2(ctx, MXR_INT_STATUS);

	/* handling VSYNC */
	if (val & MXR_INT_STATUS_VSYNC) {
		/* vsync interrupt use different bit for read and clear */
		val |= MXR_INT_CLEAR_VSYNC;
		val &= ~MXR_INT_STATUS_VSYNC;

		/* interlace scan need to check shadow register */
		if (FUNC6(MXR_BIT_INTERLACE, &ctx->flags)
		    && !FUNC1(ctx))
			goto out;

		FUNC0(&ctx->crtc->base);
	}

out:
	/* clear interrupts */
	FUNC3(ctx, MXR_INT_STATUS, val);

	FUNC5(&ctx->reg_slock);

	return IRQ_HANDLED;
}