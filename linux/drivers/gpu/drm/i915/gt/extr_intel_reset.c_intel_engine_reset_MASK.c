#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ execbuf_client; } ;
struct TYPE_11__ {TYPE_6__ guc; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct intel_gt {TYPE_5__ uc; TYPE_1__ reset; } ;
struct intel_engine_cs {size_t uabi_class; int (* resume ) (struct intel_engine_cs*) ;int /*<<< orphan*/  name; struct intel_gt* gt; TYPE_4__* i915; scalar_t__ id; } ;
struct TYPE_9__ {int /*<<< orphan*/ * reset_engine_count; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {TYPE_3__ gpu_error; TYPE_2__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ I915_RESET_ENGINE ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_engine_cs*) ; 
 int FUNC9 (struct intel_engine_cs*) ; 
 int FUNC10 (TYPE_6__*,struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_engine_cs*) ; 
 int FUNC13 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC15(struct intel_engine_cs *engine, const char *msg)
{
	struct intel_gt *gt = engine->gt;
	int ret;

	FUNC2("%s flags=%lx\n", engine->name, gt->reset.flags);
	FUNC1(!FUNC14(I915_RESET_ENGINE + engine->id, &gt->reset.flags));

	if (!FUNC7(engine))
		return 0;

	FUNC12(engine);

	if (msg)
		FUNC5(engine->i915->drm.dev,
			   "Resetting %s for %s\n", engine->name, msg);
	FUNC4(&engine->i915->gpu_error.reset_engine_count[engine->uabi_class]);

	if (!engine->gt->uc.guc.execbuf_client)
		ret = FUNC9(engine);
	else
		ret = FUNC10(&engine->gt->uc.guc, engine);
	if (ret) {
		/* If we fail here, we expect to fallback to a global reset */
		FUNC0("%sFailed to reset %s, ret=%d\n",
				 engine->gt->uc.guc.execbuf_client ? "GuC " : "",
				 engine->name, ret);
		goto out;
	}

	/*
	 * The request that caused the hang is stuck on elsp, we know the
	 * active request and can drop it, adjust head to skip the offending
	 * request to resume executing remaining requests in the queue.
	 */
	FUNC3(engine, true);

	/*
	 * The engine and its registers (and workarounds in case of render)
	 * have been reset to their default values. Follow the init_ring
	 * process to program RING_MODE, HWSP and re-enable submission.
	 */
	ret = engine->resume(engine);

out:
	FUNC6(engine);
	FUNC11(engine);
	FUNC8(engine);
	return ret;
}