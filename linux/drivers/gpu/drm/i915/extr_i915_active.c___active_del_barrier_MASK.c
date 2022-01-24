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
struct i915_active {int dummy; } ;
struct active_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i915_active*,struct active_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct active_node*) ; 

__attribute__((used)) static bool
FUNC2(struct i915_active *ref, struct active_node *node)
{
	return FUNC0(ref, node, FUNC1(node));
}