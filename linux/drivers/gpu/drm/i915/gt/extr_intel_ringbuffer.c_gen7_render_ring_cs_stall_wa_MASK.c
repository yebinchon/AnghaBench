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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int PIPE_CONTROL_CS_STALL ; 
 int PIPE_CONTROL_STALL_AT_SCOREBOARD ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct i915_request*,int) ; 

__attribute__((used)) static int
FUNC5(struct i915_request *rq)
{
	u32 *cs;

	cs = FUNC4(rq, 4);
	if (FUNC1(cs))
		return FUNC2(cs);

	*cs++ = FUNC0(4);
	*cs++ = PIPE_CONTROL_CS_STALL | PIPE_CONTROL_STALL_AT_SCOREBOARD;
	*cs++ = 0;
	*cs++ = 0;
	FUNC3(rq, cs);

	return 0;
}