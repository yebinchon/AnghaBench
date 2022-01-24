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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_devx_event_table {int /*<<< orphan*/  event_xa; } ;
struct devx_obj_event {int /*<<< orphan*/  obj_sub_list; } ;
struct devx_event {int /*<<< orphan*/  object_ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct devx_obj_event*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mlx5_devx_event_table *devx_event_table,
			   u32 key_level1,
			   bool is_level2,
			   u32 key_level2)
{
	struct devx_event *event;
	struct devx_obj_event *xa_val_level2;

	/* Level 1 is valid for future use, no need to free */
	if (!is_level2)
		return;

	event = FUNC4(&devx_event_table->event_xa, key_level1);
	FUNC0(!event);

	xa_val_level2 = FUNC4(&event->object_ids,
				key_level2);
	if (FUNC2(&xa_val_level2->obj_sub_list)) {
		FUNC3(&event->object_ids,
			 key_level2);
		FUNC1(xa_val_level2, rcu);
	}
}