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
struct devx_obj_event {int /*<<< orphan*/  obj_sub_list; int /*<<< orphan*/  object_ids; int /*<<< orphan*/  unaffiliated_list; } ;
struct devx_event {int /*<<< orphan*/  obj_sub_list; int /*<<< orphan*/  object_ids; int /*<<< orphan*/  unaffiliated_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct devx_obj_event*) ; 
 struct devx_obj_event* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct devx_obj_event*,int /*<<< orphan*/ ) ; 
 struct devx_obj_event* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mlx5_devx_event_table *devx_event_table,
			 u32 key_level1,
			 bool is_level2,
			 u32 key_level2)
{
	struct devx_obj_event *obj_event;
	struct devx_event *event;
	int err;

	event = FUNC5(&devx_event_table->event_xa, key_level1);
	if (!event) {
		event = FUNC2(sizeof(*event), GFP_KERNEL);
		if (!event)
			return -ENOMEM;

		FUNC0(&event->unaffiliated_list);
		FUNC3(&event->object_ids);

		err = FUNC4(&devx_event_table->event_xa,
				key_level1,
				event,
				GFP_KERNEL);
		if (err) {
			FUNC1(event);
			return err;
		}
	}

	if (!is_level2)
		return 0;

	obj_event = FUNC5(&event->object_ids, key_level2);
	if (!obj_event) {
		obj_event = FUNC2(sizeof(*obj_event), GFP_KERNEL);
		if (!obj_event)
			/* Level1 is valid for future use, no need to free */
			return -ENOMEM;

		err = FUNC4(&event->object_ids,
				key_level2,
				obj_event,
				GFP_KERNEL);
		if (err)
			return err;
		FUNC0(&obj_event->obj_sub_list);
	}

	return 0;
}