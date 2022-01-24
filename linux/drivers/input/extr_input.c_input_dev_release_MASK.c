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
struct input_dev {struct input_dev* vals; struct input_dev* absinfo; struct input_dev* poller; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *device)
{
	struct input_dev *dev = FUNC4(device);

	FUNC0(dev);
	FUNC1(dev);
	FUNC2(dev->poller);
	FUNC2(dev->absinfo);
	FUNC2(dev->vals);
	FUNC2(dev);

	FUNC3(THIS_MODULE);
}