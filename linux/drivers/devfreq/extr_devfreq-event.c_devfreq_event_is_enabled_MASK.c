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
struct devfreq_event_dev {scalar_t__ enable_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct devfreq_event_dev *edev)
{
	bool enabled = false;

	if (!edev || !edev->desc)
		return enabled;

	FUNC0(&edev->lock);

	if (edev->enable_count > 0)
		enabled = true;

	FUNC1(&edev->lock);

	return enabled;
}