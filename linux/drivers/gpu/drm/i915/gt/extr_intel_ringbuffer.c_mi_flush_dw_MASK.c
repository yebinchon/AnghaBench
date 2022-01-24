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
struct i915_request {int dummy; } ;

/* Variables and functions */
 int I915_GEM_HWS_SCRATCH_ADDR ; 
 scalar_t__ FUNC0 (int*) ; 
 int MI_FLUSH_DW ; 
 int MI_FLUSH_DW_OP_STOREDW ; 
 int MI_FLUSH_DW_STORE_INDEX ; 
 int MI_FLUSH_DW_USE_GTT ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*,int*) ; 
 int* FUNC3 (struct i915_request*,int) ; 

__attribute__((used)) static int FUNC4(struct i915_request *rq, u32 flags)
{
	u32 cmd, *cs;

	cs = FUNC3(rq, 4);
	if (FUNC0(cs))
		return FUNC1(cs);

	cmd = MI_FLUSH_DW;

	/*
	 * We always require a command barrier so that subsequent
	 * commands, such as breadcrumb interrupts, are strictly ordered
	 * wrt the contents of the write cache being flushed to memory
	 * (and thus being coherent from the CPU).
	 */
	cmd |= MI_FLUSH_DW_STORE_INDEX | MI_FLUSH_DW_OP_STOREDW;

	/*
	 * Bspec vol 1c.3 - blitter engine command streamer:
	 * "If ENABLED, all TLBs will be invalidated once the flush
	 * operation is complete. This bit is only valid when the
	 * Post-Sync Operation field is a value of 1h or 3h."
	 */
	cmd |= flags;

	*cs++ = cmd;
	*cs++ = I915_GEM_HWS_SCRATCH_ADDR | MI_FLUSH_DW_USE_GTT;
	*cs++ = 0;
	*cs++ = MI_NOOP;

	FUNC2(rq, cs);

	return 0;
}