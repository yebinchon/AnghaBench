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
struct i40iw_cm_node {int /*<<< orphan*/  list; } ;
struct i40iw_cm_core {int /*<<< orphan*/  ht_lock; int /*<<< orphan*/  non_accelerated_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct i40iw_cm_core *cm_core,
			       struct i40iw_cm_node *cm_node)
{
	unsigned long flags;

	if (!cm_node || !cm_core) {
		FUNC0("cm_node or cm_core == NULL\n");
		return;
	}

	FUNC2(&cm_core->ht_lock, flags);
	FUNC1(&cm_node->list, &cm_core->non_accelerated_list);
	FUNC3(&cm_core->ht_lock, flags);
}