#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct intel_engine_cs {TYPE_3__* i915; } ;
struct TYPE_6__ {int /*<<< orphan*/  priority; } ;
struct i915_request {TYPE_1__ sched; } ;
struct i915_gem_context {TYPE_1__ sched; } ;
struct drm_file {TYPE_1__ sched; } ;
struct active_engine {int flags; struct intel_engine_cs* engine; } ;
struct TYPE_7__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_8__ {TYPE_2__ drm; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct i915_request**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i915_request*) ; 
 int FUNC3 (struct i915_request*) ; 
 int TEST_PRIORITY ; 
 int FUNC4 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_request*) ; 
 struct i915_request* FUNC9 (struct i915_request*) ; 
 struct i915_request* FUNC10 (struct i915_request*,struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct i915_request* FUNC12 (TYPE_3__*,struct i915_request*) ; 
 struct i915_request* FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,struct i915_request*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prng ; 

__attribute__((used)) static int FUNC17(void *data)
{
	FUNC1(prng);
	struct active_engine *arg = data;
	struct intel_engine_cs *engine = arg->engine;
	struct i915_request *rq[8] = {};
	struct i915_gem_context *ctx[FUNC0(rq)];
	struct drm_file *file;
	unsigned long count = 0;
	int err = 0;

	file = FUNC13(engine->i915);
	if (FUNC2(file))
		return FUNC3(file);

	for (count = 0; count < FUNC0(ctx); count++) {
		FUNC15(&engine->i915->drm.struct_mutex);
		ctx[count] = FUNC12(engine->i915, file);
		FUNC16(&engine->i915->drm.struct_mutex);
		if (FUNC2(ctx[count])) {
			err = FUNC3(ctx[count]);
			while (--count)
				FUNC6(ctx[count]);
			goto err_file;
		}
	}

	while (!FUNC11()) {
		unsigned int idx = count++ & (FUNC0(rq) - 1);
		struct i915_request *old = rq[idx];
		struct i915_request *new;

		FUNC15(&engine->i915->drm.struct_mutex);
		new = FUNC10(ctx[idx], engine);
		if (FUNC2(new)) {
			FUNC16(&engine->i915->drm.struct_mutex);
			err = FUNC3(new);
			break;
		}

		if (arg->flags & TEST_PRIORITY)
			ctx[idx]->sched.priority =
				FUNC7(512, &prng);

		rq[idx] = FUNC9(new);
		FUNC8(new);
		FUNC16(&engine->i915->drm.struct_mutex);

		err = FUNC4(old);
		if (err)
			break;

		FUNC5();
	}

	for (count = 0; count < FUNC0(rq); count++) {
		int err__ = FUNC4(rq[count]);

		/* Keep the first error */
		if (!err)
			err = err__;
	}

err_file:
	FUNC14(engine->i915, file);
	return err;
}