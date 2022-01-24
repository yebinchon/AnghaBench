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
struct ipu_image_convert_run {int /*<<< orphan*/  list; int /*<<< orphan*/  status; struct ipu_image_convert_ctx* ctx; } ;
struct ipu_image_convert_ctx {struct ipu_image_convert_chan* chan; } ;
struct ipu_image_convert_chan {int /*<<< orphan*/  irqlock; struct ipu_image_convert_run* current_run; int /*<<< orphan*/  done_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_image_convert_run*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_image_convert_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_image_convert_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ipu_image_convert_ctx *ctx)
{
	struct ipu_image_convert_chan *chan = ctx->chan;
	struct ipu_image_convert_run *run;
	unsigned long flags;

	FUNC4(&chan->irqlock, flags);

	run = chan->current_run;
	if (run && run->ctx == ctx) {
		FUNC0(run);
		run->status = -EIO;
		FUNC2(&run->list, &chan->done_q);
		chan->current_run = NULL;
		FUNC3(chan);
	}

	FUNC5(&chan->irqlock, flags);

	FUNC1(chan);
}