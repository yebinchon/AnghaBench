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
struct devfreq_event_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  node; int /*<<< orphan*/  enable_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devfreq_event_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct devfreq_event_dev *edev)
{
	if (!edev)
		return -EINVAL;

	FUNC0(edev->enable_count);

	FUNC3(&devfreq_event_list_lock);
	FUNC2(&edev->node);
	FUNC4(&devfreq_event_list_lock);

	FUNC1(&edev->dev);

	return 0;
}