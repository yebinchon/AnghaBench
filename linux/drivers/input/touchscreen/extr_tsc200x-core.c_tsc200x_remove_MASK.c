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
struct tsc200x {int /*<<< orphan*/  vio; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 struct tsc200x* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tsc200x_attr_group ; 

int FUNC3(struct device *dev)
{
	struct tsc200x *ts = FUNC0(dev);

	FUNC2(&dev->kobj, &tsc200x_attr_group);

	FUNC1(ts->vio);

	return 0;
}