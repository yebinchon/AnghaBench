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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct i3c_device {TYPE_1__ dev; int /*<<< orphan*/  desc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct i3c_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct i3c_device *i3cdev = FUNC1(dev);

	FUNC0(i3cdev->desc);

	FUNC3(i3cdev->dev.of_node);
	FUNC2(i3cdev);
}