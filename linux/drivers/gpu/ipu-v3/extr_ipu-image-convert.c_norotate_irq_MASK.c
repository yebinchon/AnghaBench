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
struct ipu_image_convert_run {struct ipu_image_convert_ctx* ctx; } ;
struct ipu_image_convert_ctx {int /*<<< orphan*/  rot_mode; } ;
struct ipu_image_convert_chan {int /*<<< orphan*/  irqlock; struct ipu_image_convert_run* current_run; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_image_convert_run*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct ipu_image_convert_chan *chan = data;
	struct ipu_image_convert_ctx *ctx;
	struct ipu_image_convert_run *run;
	unsigned long flags;
	irqreturn_t ret;

	FUNC2(&chan->irqlock, flags);

	/* get current run and its context */
	run = chan->current_run;
	if (!run) {
		ret = IRQ_NONE;
		goto out;
	}

	ctx = run->ctx;

	if (FUNC1(ctx->rot_mode)) {
		/* this is a rotation operation, just ignore */
		FUNC3(&chan->irqlock, flags);
		return IRQ_HANDLED;
	}

	ret = FUNC0(run);
out:
	FUNC3(&chan->irqlock, flags);
	return ret;
}