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
struct intel_context {int /*<<< orphan*/  state; } ;
struct i915_request {int dummy; } ;
struct flex {int offset; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int LRC_STATE_PN ; 
 int MI_STORE_DWORD_IMM_GEN4 ; 
 int MI_USE_GGTT ; 
 int PAGE_SIZE ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*,int*) ; 
 int* FUNC4 (struct i915_request*,int) ; 

__attribute__((used)) static int
FUNC5(struct i915_request *rq,
		struct intel_context *ce,
		const struct flex *flex, unsigned int count)
{
	u32 offset;
	u32 *cs;

	cs = FUNC4(rq, 4 * count);
	if (FUNC0(cs))
		return FUNC1(cs);

	offset = FUNC2(ce->state) + LRC_STATE_PN * PAGE_SIZE;
	do {
		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
		*cs++ = offset + (flex->offset + 1) * sizeof(u32);
		*cs++ = 0;
		*cs++ = flex->value;
	} while (flex++, --count);

	FUNC3(rq, cs);

	return 0;
}