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
struct intel_context {int /*<<< orphan*/  sseu; TYPE_1__* engine; } ;
struct i915_gem_engines {unsigned long num_engines; struct intel_context** engines; } ;
struct i915_gem_context {struct i915_gem_engines* engines; } ;
struct TYPE_2__ {scalar_t__ class; } ;

/* Variables and functions */
 int EINVAL ; 
 struct i915_gem_engines* FUNC0 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_gem_context*) ; 
 int FUNC2 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_context*) ; 

__attribute__((used)) static int FUNC4(struct i915_gem_context *dst,
		      struct i915_gem_context *src)
{
	struct i915_gem_engines *e = FUNC0(src);
	struct i915_gem_engines *clone;
	unsigned long n;
	int err;

	clone = dst->engines; /* no locking required; sole access */
	if (e->num_engines != clone->num_engines) {
		err = -EINVAL;
		goto unlock;
	}

	for (n = 0; n < e->num_engines; n++) {
		struct intel_context *ce = e->engines[n];

		if (clone->engines[n]->engine->class != ce->engine->class) {
			/* Must have compatible engine maps! */
			err = -EINVAL;
			goto unlock;
		}

		/* serialises with set_sseu */
		err = FUNC2(ce);
		if (err)
			goto unlock;

		clone->engines[n]->sseu = ce->sseu;
		FUNC3(ce);
	}

	err = 0;
unlock:
	FUNC1(src);
	return err;
}