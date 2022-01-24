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
struct intel_context {int dummy; } ;
struct i915_request {int dummy; } ;
struct flex {int /*<<< orphan*/  value; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct i915_request*,int) ; 

__attribute__((used)) static int
FUNC7(struct i915_request *rq,
	       struct intel_context *ce,
	       const struct flex *flex, unsigned int count)
{
	u32 *cs;

	FUNC0(!count || count > 63);

	cs = FUNC6(rq, 2 * count + 2);
	if (FUNC1(cs))
		return FUNC3(cs);

	*cs++ = FUNC2(count);
	do {
		*cs++ = FUNC4(flex->reg);
		*cs++ = flex->value;
	} while (flex++, --count);
	*cs++ = MI_NOOP;

	FUNC5(rq, cs);

	return 0;
}