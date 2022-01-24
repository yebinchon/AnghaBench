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
struct intel_engine_cs {struct intel_context* kernel_context; int /*<<< orphan*/  pool; } ;
struct intel_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENGINE_MOCK ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct intel_context*) ; 
 struct intel_context* FUNC1 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct intel_engine_cs *engine)
{
	struct intel_context *ce;

	FUNC4(engine, ENGINE_MOCK);
	FUNC5(engine);
	FUNC6(engine);
	FUNC3(engine);
	FUNC7(&engine->pool);

	ce = FUNC1(engine);
	if (FUNC0(ce))
		goto err_breadcrumbs;

	engine->kernel_context = ce;
	return 0;

err_breadcrumbs:
	FUNC2(engine);
	return -ENOMEM;
}