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
struct llist_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  free_list; } ;
struct drm_i915_private {TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,struct llist_node*) ; 
 struct llist_node* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct llist_node*) ; 

void FUNC3(struct drm_i915_private *i915)
{
	struct llist_node *freed = FUNC1(&i915->mm.free_list);

	if (FUNC2(freed))
		FUNC0(i915, freed);
}