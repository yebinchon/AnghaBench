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
struct intel_engine_cs {int /*<<< orphan*/  i915; } ;
struct intel_context {TYPE_1__* state; void* lrc_reg_state; int /*<<< orphan*/  lrc_desc; int /*<<< orphan*/  gem_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I915_MAP_OVERRIDE ; 
 scalar_t__ FUNC1 (void*) ; 
 int LRC_STATE_PN ; 
 int PAGE_SIZE ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_context*,struct intel_engine_cs*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_context*,struct intel_engine_cs*) ; 

__attribute__((used)) static int
FUNC12(struct intel_context *ce,
			struct intel_engine_cs *engine)
{
	void *vaddr;
	int ret;

	FUNC0(!ce->state);

	ret = FUNC9(ce);
	if (ret)
		goto err;
	FUNC0(!FUNC8(ce->state));

	vaddr = FUNC6(ce->state->obj,
					FUNC4(engine->i915) |
					I915_MAP_OVERRIDE);
	if (FUNC1(vaddr)) {
		ret = FUNC2(vaddr);
		goto unpin_active;
	}

	ret = FUNC5(ce->gem_context);
	if (ret)
		goto unpin_map;

	ce->lrc_desc = FUNC11(ce, engine);
	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
	FUNC3(ce, engine);

	return 0;

unpin_map:
	FUNC7(ce->state->obj);
unpin_active:
	FUNC10(ce);
err:
	return ret;
}