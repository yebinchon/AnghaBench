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
struct bcm5974 {int opened; int /*<<< orphan*/  intf; int /*<<< orphan*/  pm_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct bcm5974*) ; 
 struct bcm5974* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct input_dev *input)
{
	struct bcm5974 *dev = FUNC1(input);
	int error;

	error = FUNC4(dev->intf);
	if (error)
		return error;

	FUNC2(&dev->pm_mutex);

	error = FUNC0(dev);
	if (!error)
		dev->opened = 1;

	FUNC3(&dev->pm_mutex);

	if (error)
		FUNC5(dev->intf);

	return error;
}