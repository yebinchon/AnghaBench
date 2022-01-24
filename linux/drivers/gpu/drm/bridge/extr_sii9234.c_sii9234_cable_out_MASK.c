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
struct sii9234 {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ ST_OFF ; 
 int /*<<< orphan*/  TPI_DPD_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sii9234*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sii9234*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sii9234 *ctx)
{
	FUNC1(&ctx->lock);

	if (ctx->state == ST_OFF)
		goto unlock;

	FUNC0(FUNC4(ctx->dev)->irq);
	FUNC5(ctx, TPI_DPD_REG, 0);
	/* Turn on&off hpd festure for only QCT HDMI */
	FUNC3(ctx);

	ctx->state = ST_OFF;

unlock:
	FUNC2(&ctx->lock);
}