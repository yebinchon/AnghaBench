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
struct llist_node {int dummy; } ;
struct llist_head {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  uabi_engines; } ;

/* Variables and functions */
 struct llist_node* FUNC0 (struct llist_head*) ; 

__attribute__((used)) static struct llist_node *FUNC1(struct drm_i915_private *i915)
{
	return FUNC0((struct llist_head *)&i915->uabi_engines);
}