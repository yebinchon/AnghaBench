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
typedef  void* u32 ;
struct i915_wa_list {unsigned int count; struct i915_wa* list; } ;
struct i915_wa {int /*<<< orphan*/  reg; } ;
struct i915_vma {int dummy; } ;
struct i915_request {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (void**) ; 
 int MI_SRM_LRM_GLOBAL_GTT ; 
 int MI_STORE_REGISTER_MEM ; 
 int FUNC2 (void**) ; 
 int FUNC3 (struct i915_vma*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*,void**) ; 
 void** FUNC6 (struct i915_request*,int) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,void*) ; 

__attribute__((used)) static int
FUNC8(struct i915_request *rq,
	    const struct i915_wa_list *wal,
	    struct i915_vma *vma)
{
	struct drm_i915_private *i915 = rq->i915;
	unsigned int i, count = 0;
	const struct i915_wa *wa;
	u32 srm, *cs;

	srm = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
	if (FUNC0(i915) >= 8)
		srm++;

	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
		if (!FUNC7(i915, FUNC4(wa->reg)))
			count++;
	}

	cs = FUNC6(rq, 4 * count);
	if (FUNC1(cs))
		return FUNC2(cs);

	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
		u32 offset = FUNC4(wa->reg);

		if (FUNC7(i915, offset))
			continue;

		*cs++ = srm;
		*cs++ = offset;
		*cs++ = FUNC3(vma) + sizeof(u32) * i;
		*cs++ = 0;
	}
	FUNC5(rq, cs);

	return 0;
}