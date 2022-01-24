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
struct pagevec {scalar_t__ nr; int /*<<< orphan*/  pages; } ;
struct TYPE_3__ {struct pagevec pvec; } ;
struct TYPE_4__ {TYPE_1__ wc_stash; } ;
struct drm_i915_private {TYPE_2__ mm; int /*<<< orphan*/  ggtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct drm_i915_private *i915)
{
	struct pagevec *pvec;

	FUNC1(&i915->ggtt);

	FUNC2(&i915->ggtt);

	pvec = &i915->mm.wc_stash.pvec;
	if (pvec->nr) {
		FUNC4(pvec->pages, pvec->nr);
		FUNC0(pvec);
	}

	FUNC3(i915);
}