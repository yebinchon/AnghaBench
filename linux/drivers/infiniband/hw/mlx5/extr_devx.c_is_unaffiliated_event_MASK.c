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
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 unsigned long MAX_SUPP_EVENT_NUM ; 
 int /*<<< orphan*/ * FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_cap ; 
 int FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  user_unaffiliated_events ; 

__attribute__((used)) static bool FUNC5(struct mlx5_core_dev *dev,
				  unsigned long event_type)
{
	__be64 *unaff_events;
	int mask_entry;
	int mask_bit;

	if (!FUNC1(dev, event_cap))
		return FUNC4(event_type);

	unaff_events = FUNC0(dev,
					  user_unaffiliated_events);
	FUNC2(event_type > MAX_SUPP_EVENT_NUM);

	mask_entry = event_type / 64;
	mask_bit = event_type % 64;

	if (!(FUNC3(unaff_events[mask_entry]) & (1ull << mask_bit)))
		return false;

	return true;
}