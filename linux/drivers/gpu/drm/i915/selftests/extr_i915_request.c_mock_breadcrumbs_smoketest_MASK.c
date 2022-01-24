#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct smoketest {int ncontexts; int max_batch; struct task_struct** contexts; TYPE_2__* engine; int /*<<< orphan*/  num_fences; int /*<<< orphan*/  num_waits; int /*<<< orphan*/  request_alloc; } ;
struct drm_i915_private {TYPE_2__** engine; } ;
struct TYPE_8__ {int /*<<< orphan*/  timeout_jiffies; } ;
struct TYPE_5__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_7__ {TYPE_1__ drm; } ;
struct TYPE_6__ {TYPE_3__* i915; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 size_t RCS0 ; 
 int /*<<< orphan*/  __igt_breadcrumbs_smoketest ; 
 int /*<<< orphan*/  __mock_request_alloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 TYPE_4__ i915_selftest ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct**) ; 
 void* FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC7 (int /*<<< orphan*/ ,struct smoketest*,char*,unsigned int) ; 
 int FUNC8 (struct task_struct*) ; 
 struct task_struct* FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct task_struct*) ; 

__attribute__((used)) static int FUNC17(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct smoketest t = {
		.engine = i915->engine[RCS0],
		.ncontexts = 1024,
		.max_batch = 1024,
		.request_alloc = __mock_request_alloc
	};
	unsigned int ncpus = FUNC14();
	struct task_struct **threads;
	unsigned int n;
	int ret = 0;

	/*
	 * Smoketest our breadcrumb/signal handling for requests across multiple
	 * threads. A very simple test to only catch the most egregious of bugs.
	 * See __igt_breadcrumbs_smoketest();
	 */

	threads = FUNC6(ncpus, sizeof(*threads), GFP_KERNEL);
	if (!threads)
		return -ENOMEM;

	t.contexts =
		FUNC6(t.ncontexts, sizeof(*t.contexts), GFP_KERNEL);
	if (!t.contexts) {
		ret = -ENOMEM;
		goto out_threads;
	}

	FUNC12(&t.engine->i915->drm.struct_mutex);
	for (n = 0; n < t.ncontexts; n++) {
		t.contexts[n] = FUNC9(t.engine->i915, "mock");
		if (!t.contexts[n]) {
			ret = -ENOMEM;
			goto out_contexts;
		}
	}
	FUNC13(&t.engine->i915->drm.struct_mutex);

	for (n = 0; n < ncpus; n++) {
		threads[n] = FUNC7(__igt_breadcrumbs_smoketest,
					 &t, "igt/%d", n);
		if (FUNC0(threads[n])) {
			ret = FUNC1(threads[n]);
			ncpus = n;
			break;
		}

		FUNC3(threads[n]);
	}

	FUNC11(FUNC4(i915_selftest.timeout_jiffies));

	for (n = 0; n < ncpus; n++) {
		int err;

		err = FUNC8(threads[n]);
		if (err < 0 && !ret)
			ret = err;

		FUNC16(threads[n]);
	}
	FUNC15("Completed %lu waits for %lu fence across %d cpus\n",
		FUNC2(&t.num_waits),
		FUNC2(&t.num_fences),
		ncpus);

	FUNC12(&t.engine->i915->drm.struct_mutex);
out_contexts:
	for (n = 0; n < t.ncontexts; n++) {
		if (!t.contexts[n])
			break;
		FUNC10(t.contexts[n]);
	}
	FUNC13(&t.engine->i915->drm.struct_mutex);
	FUNC5(t.contexts);
out_threads:
	FUNC5(threads);

	return ret;
}