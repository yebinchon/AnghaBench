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
struct bcm5974 {int /*<<< orphan*/  intf; int /*<<< orphan*/  pm_mutex; scalar_t__ opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm5974*) ; 
 struct bcm5974* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct input_dev *input)
{
	struct bcm5974 *dev = FUNC1(input);

	FUNC2(&dev->pm_mutex);

	FUNC0(dev);
	dev->opened = 0;

	FUNC3(&dev->pm_mutex);

	FUNC4(dev->intf);
}