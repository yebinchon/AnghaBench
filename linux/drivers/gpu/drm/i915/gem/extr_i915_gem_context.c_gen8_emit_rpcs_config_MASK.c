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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_sseu {int dummy; } ;
struct intel_context {int /*<<< orphan*/  state; } ;
struct i915_request {int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int CTX_R_PWR_CLK_STATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int LRC_STATE_PN ; 
 int MI_STORE_DWORD_IMM_GEN4 ; 
 int MI_USE_GGTT ; 
 int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct i915_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct intel_sseu*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct i915_request *rq,
				 struct intel_context *ce,
				 struct intel_sseu sseu)
{
	u64 offset;
	u32 *cs;

	cs = FUNC4(rq, 4);
	if (FUNC0(cs))
		return FUNC1(cs);

	offset = FUNC2(ce->state) +
		 LRC_STATE_PN * PAGE_SIZE +
		 (CTX_R_PWR_CLK_STATE + 1) * 4;

	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
	*cs++ = FUNC6(offset);
	*cs++ = FUNC7(offset);
	*cs++ = FUNC5(rq->i915, &sseu);

	FUNC3(rq, cs);

	return 0;
}