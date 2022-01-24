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
struct gsc_context {int dummy; } ;

/* Variables and functions */
 scalar_t__ GSC_BUF_START ; 
 scalar_t__ GSC_BUF_STOP ; 
 int /*<<< orphan*/  GSC_OUT_BASE_ADDR_CB_MASK ; 
 int /*<<< orphan*/  GSC_OUT_BASE_ADDR_CR_MASK ; 
 int /*<<< orphan*/  GSC_OUT_BASE_ADDR_Y_MASK ; 
 scalar_t__ FUNC0 (struct gsc_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct gsc_context*,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gsc_context *ctx, u32 buf_id,
				bool enqueue)
{
	bool masked = !enqueue;
	u32 cfg;
	u32 mask = 0x00000001 << buf_id;

	/* mask register set */
	cfg = FUNC2(GSC_OUT_BASE_ADDR_Y_MASK);

	/* sequence id */
	cfg &= ~mask;
	cfg |= masked << buf_id;
	FUNC3(cfg, GSC_OUT_BASE_ADDR_Y_MASK);
	FUNC3(cfg, GSC_OUT_BASE_ADDR_CB_MASK);
	FUNC3(cfg, GSC_OUT_BASE_ADDR_CR_MASK);

	/* interrupt enable */
	if (enqueue && FUNC0(ctx) >= GSC_BUF_START)
		FUNC1(ctx, true, false, true);

	/* interrupt disable */
	if (!enqueue && FUNC0(ctx) <= GSC_BUF_STOP)
		FUNC1(ctx, false, false, true);
}