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
 int /*<<< orphan*/  GSC_IN_BASE_ADDR_CB_MASK ; 
 int /*<<< orphan*/  GSC_IN_BASE_ADDR_CR_MASK ; 
 int /*<<< orphan*/  GSC_IN_BASE_ADDR_Y_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gsc_context *ctx, u32 buf_id,
			       bool enqueue)
{
	bool masked = !enqueue;
	u32 cfg;
	u32 mask = 0x00000001 << buf_id;

	/* mask register set */
	cfg = FUNC0(GSC_IN_BASE_ADDR_Y_MASK);

	/* sequence id */
	cfg &= ~mask;
	cfg |= masked << buf_id;
	FUNC1(cfg, GSC_IN_BASE_ADDR_Y_MASK);
	FUNC1(cfg, GSC_IN_BASE_ADDR_CB_MASK);
	FUNC1(cfg, GSC_IN_BASE_ADDR_CR_MASK);
}