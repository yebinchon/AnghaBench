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
typedef  int /*<<< orphan*/  u32 ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MI_FLUSH ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct i915_request*,int) ; 

__attribute__((used)) static int
FUNC4(struct i915_request *rq, u32 mode)
{
	u32 *cs;

	cs = FUNC3(rq, 2);
	if (FUNC0(cs))
		return FUNC1(cs);

	*cs++ = MI_FLUSH;
	*cs++ = MI_NOOP;
	FUNC2(rq, cs);
	return 0;
}