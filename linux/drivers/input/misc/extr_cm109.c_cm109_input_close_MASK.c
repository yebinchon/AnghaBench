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
struct input_dev {int dummy; } ;
struct cm109_dev {int /*<<< orphan*/  intf; int /*<<< orphan*/  pm_mutex; scalar_t__ open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cm109_dev*) ; 
 struct cm109_dev* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct input_dev *idev)
{
	struct cm109_dev *dev = FUNC1(idev);

	FUNC2(&dev->pm_mutex);

	/*
	 * Once we are here event delivery is stopped so we
	 * don't need to worry about someone starting buzzer
	 * again
	 */
	FUNC0(dev);
	dev->open = 0;

	FUNC3(&dev->pm_mutex);

	FUNC4(dev->intf);
}