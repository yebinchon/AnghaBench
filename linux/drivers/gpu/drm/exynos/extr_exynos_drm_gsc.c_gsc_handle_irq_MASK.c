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
struct gsc_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  GSC_IRQ ; 
 int GSC_IRQ_ENABLE ; 
 int GSC_IRQ_FRMDONE_MASK ; 
 int GSC_IRQ_OR_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gsc_context *ctx, bool enable,
		bool overflow, bool done)
{
	u32 cfg;

	FUNC0(ctx->dev, "enable[%d]overflow[%d]level[%d]\n",
			  enable, overflow, done);

	cfg = FUNC1(GSC_IRQ);
	cfg |= (GSC_IRQ_OR_MASK | GSC_IRQ_FRMDONE_MASK);

	if (enable)
		cfg |= GSC_IRQ_ENABLE;
	else
		cfg &= ~GSC_IRQ_ENABLE;

	if (overflow)
		cfg &= ~GSC_IRQ_OR_MASK;
	else
		cfg |= GSC_IRQ_OR_MASK;

	if (done)
		cfg &= ~GSC_IRQ_FRMDONE_MASK;
	else
		cfg |= GSC_IRQ_FRMDONE_MASK;

	FUNC2(cfg, GSC_IRQ);
}