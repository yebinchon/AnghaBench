#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct i915_request {TYPE_2__* i915; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** remap_info; } ;
struct TYPE_4__ {TYPE_1__ l3_parity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int GEN7_L3LOG_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct i915_request*,int) ; 

__attribute__((used)) static int FUNC7(struct i915_request *rq, int slice)
{
	u32 *cs, *remap_info = rq->i915->l3_parity.remap_info[slice];
	int i;

	if (!remap_info)
		return 0;

	cs = FUNC6(rq, GEN7_L3LOG_SIZE/4 * 2 + 2);
	if (FUNC1(cs))
		return FUNC3(cs);

	/*
	 * Note: We do not worry about the concurrent register cacheline hang
	 * here because no other code should access these registers other than
	 * at initialization time.
	 */
	*cs++ = FUNC2(GEN7_L3LOG_SIZE/4);
	for (i = 0; i < GEN7_L3LOG_SIZE/4; i++) {
		*cs++ = FUNC4(FUNC0(slice, i));
		*cs++ = remap_info[i];
	}
	*cs++ = MI_NOOP;
	FUNC5(rq, cs);

	return 0;
}