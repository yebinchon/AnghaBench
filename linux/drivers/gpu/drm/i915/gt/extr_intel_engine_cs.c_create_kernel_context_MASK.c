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
struct intel_engine_cs {TYPE_1__* i915; } ;
struct intel_context {int /*<<< orphan*/  ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  kernel_context; } ;

/* Variables and functions */
 struct intel_context* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct intel_context*) ; 
 int /*<<< orphan*/  SZ_4K ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_context* FUNC3 (int /*<<< orphan*/ ,struct intel_engine_cs*) ; 
 int FUNC4 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_context*) ; 

__attribute__((used)) static struct intel_context *
FUNC6(struct intel_engine_cs *engine)
{
	struct intel_context *ce;
	int err;

	ce = FUNC3(engine->i915->kernel_context, engine);
	if (FUNC1(ce))
		return ce;

	ce->ring = FUNC2(SZ_4K);

	err = FUNC4(ce);
	if (err) {
		FUNC5(ce);
		return FUNC0(err);
	}

	return ce;
}