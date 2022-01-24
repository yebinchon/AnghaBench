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
struct intel_engine_cs {int /*<<< orphan*/  name; struct intel_context* kernel_context; } ;
struct intel_context {int /*<<< orphan*/  active; } ;
struct i915_gem_context {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct intel_context*) ; 
 int FUNC1 (struct intel_context*) ; 
 int FUNC2 (struct intel_context*,struct intel_context*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct intel_context* FUNC4 (struct i915_gem_context*,struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct intel_engine_cs *engine,
				 struct i915_gem_context *fixme)
{
	struct intel_context *local, *remote;
	int pass;
	int err;

	/*
	 * Check that our idle barriers do not interfere with normal
	 * activity tracking. In particular, check that operating
	 * on the context image remotely (intel_context_prepare_remote_request),
	 * which inserts foreign fences into intel_context.active, does not
	 * clobber the idle-barrier.
	 */

	remote = FUNC4(fixme, engine);
	if (FUNC0(remote))
		return FUNC1(remote);

	local = FUNC4(fixme, engine);
	if (FUNC0(local)) {
		err = FUNC1(local);
		goto err_remote;
	}

	for (pass = 0; pass <= 2; pass++) {
		err = FUNC2(local, remote);
		if (err)
			break;

		err = FUNC2(engine->kernel_context, remote);
		if (err)
			break;

		if (FUNC3(&remote->active)) {
			FUNC6("remote context is not active; expected idle-barrier (%s pass %d)\n",
			       engine->name, pass);
			err = -EINVAL;
			break;
		}
	}

	FUNC5(local);
err_remote:
	FUNC5(remote);
	return err;
}