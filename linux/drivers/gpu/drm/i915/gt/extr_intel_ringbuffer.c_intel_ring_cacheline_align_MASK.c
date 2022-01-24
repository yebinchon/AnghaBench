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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct i915_request {TYPE_1__* ring; } ;
struct TYPE_2__ {int emit; } ;

/* Variables and functions */
 int CACHELINE_BYTES ; 
 int CACHELINE_DWORDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int MI_NOOP ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*,void*) ; 
 void* FUNC4 (struct i915_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int) ; 

int FUNC6(struct i915_request *rq)
{
	int num_dwords;
	void *cs;

	num_dwords = (rq->ring->emit & (CACHELINE_BYTES - 1)) / sizeof(u32);
	if (num_dwords == 0)
		return 0;

	num_dwords = CACHELINE_DWORDS - num_dwords;
	FUNC0(num_dwords & 1);

	cs = FUNC4(rq, num_dwords);
	if (FUNC1(cs))
		return FUNC2(cs);

	FUNC5(cs, (u64)MI_NOOP << 32 | MI_NOOP, num_dwords / 2);
	FUNC3(rq, cs);

	FUNC0(rq->ring->emit & (CACHELINE_BYTES - 1));
	return 0;
}