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
struct i40iw_timer_entry {scalar_t__ sqbuf; } ;
struct i40iw_device {int /*<<< orphan*/  vsi; } ;
struct i40iw_cm_node {int /*<<< orphan*/  ref_count; struct i40iw_timer_entry* send_entry; struct i40iw_device* iwdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_timer_entry*) ; 

__attribute__((used)) static void FUNC3(struct i40iw_cm_node *cm_node)
{
	struct i40iw_device *iwdev = cm_node->iwdev;
	struct i40iw_timer_entry *send_entry;

	send_entry = cm_node->send_entry;
	if (send_entry) {
		cm_node->send_entry = NULL;
		FUNC1(&iwdev->vsi, (void *)send_entry->sqbuf);
		FUNC2(send_entry);
		FUNC0(&cm_node->ref_count);
	}
}