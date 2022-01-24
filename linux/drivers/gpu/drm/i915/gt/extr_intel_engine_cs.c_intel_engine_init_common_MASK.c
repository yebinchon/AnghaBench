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
struct intel_engine_cs {int emit_fini_breadcrumb_dw; struct intel_context* kernel_context; int /*<<< orphan*/  (* set_default_submission ) (struct intel_engine_cs*) ;} ;
struct intel_context {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct intel_context*) ; 
 int FUNC1 (struct intel_context*) ; 
 struct intel_context* FUNC2 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_context*) ; 
 int FUNC5 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_engine_cs*) ; 

int FUNC7(struct intel_engine_cs *engine)
{
	struct intel_context *ce;
	int ret;

	engine->set_default_submission(engine);

	/*
	 * We may need to do things with the shrinker which
	 * require us to immediately switch back to the default
	 * context. This can cause a problem as pinning the
	 * default context also requires GTT space which may not
	 * be available. To avoid this we always pin the default
	 * context.
	 */
	ce = FUNC2(engine);
	if (FUNC0(ce))
		return FUNC1(ce);

	engine->kernel_context = ce;

	ret = FUNC5(engine);
	if (ret < 0)
		goto err_unpin;

	engine->emit_fini_breadcrumb_dw = ret;

	return 0;

err_unpin:
	FUNC4(ce);
	FUNC3(ce);
	return ret;
}