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
struct maple_device {int /*<<< orphan*/ * callback; } ;
struct device {int dummy; } ;
struct dc_mouse {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_mouse*) ; 
 struct dc_mouse* FUNC2 (struct maple_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct maple_device*,int /*<<< orphan*/ *) ; 
 struct maple_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct maple_device *mdev = FUNC4(dev);
	struct dc_mouse *mse = FUNC2(mdev);

	mdev->callback = NULL;
	FUNC0(mse->dev);
	FUNC3(mdev, NULL);
	FUNC1(mse);

	return 0;
}