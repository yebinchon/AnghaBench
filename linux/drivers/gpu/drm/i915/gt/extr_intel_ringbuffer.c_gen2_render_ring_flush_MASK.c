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
typedef  int u32 ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int EMIT_FLUSH ; 
 int EMIT_INVALIDATE ; 
 int /*<<< orphan*/  INTEL_GT_SCRATCH_FIELD_DEFAULT ; 
 scalar_t__ FUNC0 (int*) ; 
 int MI_FLUSH ; 
 int MI_MEM_VIRTUAL ; 
 int MI_NO_WRITE_FLUSH ; 
 int MI_READ_FLUSH ; 
 int MI_STORE_DWORD_IMM ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*,int*) ; 
 int* FUNC4 (struct i915_request*,int) ; 

__attribute__((used)) static int
FUNC5(struct i915_request *rq, u32 mode)
{
	unsigned int num_store_dw;
	u32 cmd, *cs;

	cmd = MI_FLUSH;
	num_store_dw = 0;
	if (mode & EMIT_INVALIDATE)
		cmd |= MI_READ_FLUSH;
	if (mode & EMIT_FLUSH)
		num_store_dw = 4;

	cs = FUNC4(rq, 2 + 3 * num_store_dw);
	if (FUNC0(cs))
		return FUNC1(cs);

	*cs++ = cmd;
	while (num_store_dw--) {
		*cs++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
		*cs++ = FUNC2(rq->engine->gt,
						INTEL_GT_SCRATCH_FIELD_DEFAULT);
		*cs++ = 0;
	}
	*cs++ = MI_FLUSH | MI_NO_WRITE_FLUSH;

	FUNC3(rq, cs);

	return 0;
}