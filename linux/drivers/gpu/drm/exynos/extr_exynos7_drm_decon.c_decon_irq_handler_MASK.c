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
struct decon_context {int /*<<< orphan*/  wait_vsync_queue; int /*<<< orphan*/  wait_vsync_event; TYPE_1__* crtc; scalar_t__ i80_if; int /*<<< orphan*/  drm_dev; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ VIDINTCON1 ; 
 int VIDINTCON1_INT_FRAME ; 
 int VIDINTCON1_INT_I80 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct decon_context *ctx = (struct decon_context *)dev_id;
	u32 val, clear_bit;

	val = FUNC3(ctx->regs + VIDINTCON1);

	clear_bit = ctx->i80_if ? VIDINTCON1_INT_I80 : VIDINTCON1_INT_FRAME;
	if (val & clear_bit)
		FUNC5(clear_bit, ctx->regs + VIDINTCON1);

	/* check the crtc is detached already from encoder */
	if (!ctx->drm_dev)
		goto out;

	if (!ctx->i80_if) {
		FUNC2(&ctx->crtc->base);

		/* set wait vsync event to zero and wake up queue. */
		if (FUNC0(&ctx->wait_vsync_event)) {
			FUNC1(&ctx->wait_vsync_event, 0);
			FUNC4(&ctx->wait_vsync_queue);
		}
	}
out:
	return IRQ_HANDLED;
}