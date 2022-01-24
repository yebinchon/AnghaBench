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
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct devx_obj {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int MAX_SUPP_EVENT_NUM ; 
 int /*<<< orphan*/ * FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_cap ; 
 int FUNC3 (int,int*,struct devx_obj*) ; 
 int /*<<< orphan*/  user_affiliated_events ; 
 int /*<<< orphan*/  user_unaffiliated_events ; 

__attribute__((used)) static bool FUNC4(struct mlx5_core_dev *dev,
			    int num_events, u16 *event_type_num_list,
			    struct devx_obj *obj)
{
	__be64 *aff_events;
	__be64 *unaff_events;
	int mask_entry;
	int mask_bit;
	int i;

	if (FUNC1(dev, event_cap)) {
		aff_events = FUNC0(dev,
						user_affiliated_events);
		unaff_events = FUNC0(dev,
						  user_unaffiliated_events);
	} else {
		return FUNC3(num_events, event_type_num_list,
					      obj);
	}

	for (i = 0; i < num_events; i++) {
		if (event_type_num_list[i] > MAX_SUPP_EVENT_NUM)
			return false;

		mask_entry = event_type_num_list[i] / 64;
		mask_bit = event_type_num_list[i] % 64;

		if (obj) {
			/* CQ completion */
			if (event_type_num_list[i] == 0)
				continue;

			if (!(FUNC2(aff_events[mask_entry]) &
					(1ull << mask_bit)))
				return false;

			continue;
		}

		if (!(FUNC2(unaff_events[mask_entry]) &
				(1ull << mask_bit)))
			return false;
	}

	return true;
}