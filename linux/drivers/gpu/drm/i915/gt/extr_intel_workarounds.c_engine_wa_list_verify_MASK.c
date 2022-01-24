#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i915_vma {int /*<<< orphan*/  obj; int /*<<< orphan*/  i915; } ;
typedef  struct i915_vma u32 ;
struct intel_context {TYPE_3__* engine; } ;
struct i915_wa_list {unsigned int count; int /*<<< orphan*/  name; struct i915_wa* list; } ;
struct i915_wa {int /*<<< orphan*/  reg; } ;
struct i915_request {int /*<<< orphan*/  obj; int /*<<< orphan*/  i915; } ;
struct TYPE_6__ {TYPE_2__* gt; } ;
struct TYPE_5__ {TYPE_1__* ggtt; } ;
struct TYPE_4__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int ENXIO ; 
 int ETIME ; 
 int HZ ; 
 int /*<<< orphan*/  I915_MAP_WB ; 
 scalar_t__ FUNC0 (struct i915_vma*) ; 
 int FUNC1 (struct i915_vma*) ; 
 struct i915_vma* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 struct i915_vma* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*) ; 
 scalar_t__ FUNC7 (struct i915_vma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_vma*) ; 
 struct i915_vma* FUNC10 (struct intel_context*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct i915_vma*,struct i915_wa_list const* const,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC13 (struct i915_wa const*,struct i915_vma,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC14(struct intel_context *ce,
				 const struct i915_wa_list * const wal,
				 const char *from)
{
	const struct i915_wa *wa;
	struct i915_request *rq;
	struct i915_vma *vma;
	unsigned int i;
	u32 *results;
	int err;

	if (!wal->count)
		return 0;

	vma = FUNC2(&ce->engine->gt->ggtt->vm, wal->count);
	if (FUNC0(vma))
		return FUNC1(vma);

	rq = FUNC10(ce);
	if (FUNC0(rq)) {
		err = FUNC1(rq);
		goto err_vma;
	}

	err = FUNC12(rq, wal, vma);
	if (err)
		goto err_vma;

	FUNC6(rq);
	if (FUNC7(rq, 0, HZ / 5) < 0) {
		err = -ETIME;
		goto err_vma;
	}

	results = FUNC3(vma->obj, I915_MAP_WB);
	if (FUNC0(results)) {
		err = FUNC1(results);
		goto err_vma;
	}

	err = 0;
	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
		if (FUNC11(rq->i915, FUNC5(wa->reg)))
			continue;

		if (!FUNC13(wa, results[i], wal->name, from))
			err = -ENXIO;
	}

	FUNC4(vma->obj);

err_vma:
	FUNC9(vma);
	FUNC8(vma);
	return err;
}