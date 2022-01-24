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
struct ipu_image_convert_run {struct ipu_image_convert_ctx* ctx; } ;
struct ipu_image_convert_priv {TYPE_1__* ipu; } ;
struct ipu_image_convert_ctx {int /*<<< orphan*/  rot_mode; } ;
struct ipu_image_convert_chan {int /*<<< orphan*/  irqlock; struct ipu_image_convert_run* current_run; struct ipu_image_convert_priv* priv; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_image_convert_run*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct ipu_image_convert_chan *chan = data;
	struct ipu_image_convert_priv *priv = chan->priv;
	struct ipu_image_convert_ctx *ctx;
	struct ipu_image_convert_run *run;
	unsigned long flags;
	irqreturn_t ret;

	FUNC3(&chan->irqlock, flags);

	/* get current run and its context */
	run = chan->current_run;
	if (!run) {
		ret = IRQ_NONE;
		goto out;
	}

	ctx = run->ctx;

	if (!FUNC2(ctx->rot_mode)) {
		/* this was NOT a rotation operation, shouldn't happen */
		FUNC0(priv->ipu->dev, "Unexpected rotation interrupt\n");
		FUNC4(&chan->irqlock, flags);
		return IRQ_HANDLED;
	}

	ret = FUNC1(run);
out:
	FUNC4(&chan->irqlock, flags);
	return ret;
}