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
typedef  int /*<<< orphan*/  u32 ;
struct i915_request {TYPE_1__* engine; int /*<<< orphan*/  i915; } ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ MI_NOOP ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ RCS0 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct i915_request*,int) ; 

__attribute__((used)) static int FUNC9(struct i915_request *rq)
{
	u32 *cs;
	int i;

	if (!FUNC3(rq->i915, 7) || rq->engine->id != RCS0) {
		FUNC0("sol reset is gen7/rcs only\n");
		return -EINVAL;
	}

	cs = FUNC8(rq, 4 * 2 + 2);
	if (FUNC2(cs))
		return FUNC5(cs);

	*cs++ = FUNC4(4);
	for (i = 0; i < 4; i++) {
		*cs++ = FUNC6(FUNC1(i));
		*cs++ = 0;
	}
	*cs++ = MI_NOOP;
	FUNC7(rq, cs);

	return 0;
}