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
struct TYPE_2__ {int /*<<< orphan*/  event_xa; } ;
struct mlx5_ib_dev {TYPE_1__ devx_event_table; } ;
struct devx_obj_event {int /*<<< orphan*/  obj_sub_list; } ;
struct devx_event_subscription {int is_cleaned; int /*<<< orphan*/  xa_key_level2; int /*<<< orphan*/  xa_key_level1; int /*<<< orphan*/  obj_list; int /*<<< orphan*/  xa_list; } ;
struct devx_event {int /*<<< orphan*/  object_ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct devx_obj_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mlx5_ib_dev *dev,
				      struct devx_event_subscription *sub)
{
	struct devx_event *event;
	struct devx_obj_event *xa_val_level2;

	if (sub->is_cleaned)
		return;

	sub->is_cleaned = 1;
	FUNC2(&sub->xa_list);

	if (FUNC3(&sub->obj_list))
		return;

	FUNC2(&sub->obj_list);
	/* check whether key level 1 for this obj_sub_list is empty */
	event = FUNC5(&dev->devx_event_table.event_xa,
			sub->xa_key_level1);
	FUNC0(!event);

	xa_val_level2 = FUNC5(&event->object_ids, sub->xa_key_level2);
	if (FUNC3(&xa_val_level2->obj_sub_list)) {
		FUNC4(&event->object_ids,
			 sub->xa_key_level2);
		FUNC1(xa_val_level2, rcu);
	}
}