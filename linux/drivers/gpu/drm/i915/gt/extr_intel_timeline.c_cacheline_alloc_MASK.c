#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_timeline_hwsp {TYPE_1__* gt; TYPE_2__* vma; } ;
struct intel_timeline_cacheline {int /*<<< orphan*/  active; int /*<<< orphan*/  vaddr; struct intel_timeline_hwsp* hwsp; } ;
struct TYPE_4__ {int /*<<< orphan*/  obj; } ;
struct TYPE_3__ {int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CACHELINE_BITS ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct intel_timeline_cacheline* FUNC1 (void*) ; 
 struct intel_timeline_cacheline* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I915_MAP_WB ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  __cacheline_active ; 
 int /*<<< orphan*/  __cacheline_retire ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_timeline_cacheline*) ; 
 struct intel_timeline_cacheline* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,unsigned int) ; 

__attribute__((used)) static struct intel_timeline_cacheline *
FUNC11(struct intel_timeline_hwsp *hwsp, unsigned int cacheline)
{
	struct intel_timeline_cacheline *cl;
	void *vaddr;

	FUNC3(cacheline >= FUNC0(CACHELINE_BITS));

	cl = FUNC9(sizeof(*cl), GFP_KERNEL);
	if (!cl)
		return FUNC2(-ENOMEM);

	vaddr = FUNC6(hwsp->vma->obj, I915_MAP_WB);
	if (FUNC4(vaddr)) {
		FUNC8(cl);
		return FUNC1(vaddr);
	}

	FUNC7(hwsp->vma);
	cl->hwsp = hwsp;
	cl->vaddr = FUNC10(vaddr, cacheline);

	FUNC5(hwsp->gt->i915, &cl->active,
			 __cacheline_active, __cacheline_retire);

	return cl;
}