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
struct intel_uncore {int dummy; } ;
struct intel_engine_cs {int /*<<< orphan*/  name; int /*<<< orphan*/  mmio_base; struct intel_uncore* uncore; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int RESET_CTL_CAT_ERROR ; 
 int RESET_CTL_READY_TO_RESET ; 
 int RESET_CTL_REQUEST_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct intel_uncore*,int /*<<< orphan*/  const,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct intel_uncore*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct intel_engine_cs *engine)
{
	struct intel_uncore *uncore = engine->uncore;
	const i915_reg_t reg = FUNC1(engine->mmio_base);
	u32 request, mask, ack;
	int ret;

	ack = FUNC4(uncore, reg);
	if (ack & RESET_CTL_CAT_ERROR) {
		/*
		 * For catastrophic errors, ready-for-reset sequence
		 * needs to be bypassed: HAS#396813
		 */
		request = RESET_CTL_CAT_ERROR;
		mask = RESET_CTL_CAT_ERROR;

		/* Catastrophic errors need to be cleared by HW */
		ack = 0;
	} else if (!(ack & RESET_CTL_READY_TO_RESET)) {
		request = RESET_CTL_REQUEST_RESET;
		mask = RESET_CTL_READY_TO_RESET;
		ack = RESET_CTL_READY_TO_RESET;
	} else {
		return 0;
	}

	FUNC5(uncore, reg, FUNC2(request));
	ret = FUNC3(uncore, reg, mask, ack,
					   700, 0, NULL);
	if (ret)
		FUNC0("%s reset request timed out: {request: %08x, RESET_CTL: %08x}\n",
			  engine->name, request,
			  FUNC4(uncore, reg));

	return ret;
}