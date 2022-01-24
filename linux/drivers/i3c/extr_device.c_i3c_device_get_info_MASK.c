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
struct i3c_device_info {int dummy; } ;
struct i3c_device {int /*<<< orphan*/  bus; TYPE_1__* desc; } ;
struct TYPE_2__ {struct i3c_device_info info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct i3c_device *dev,
			 struct i3c_device_info *info)
{
	if (!info)
		return;

	FUNC0(dev->bus);
	if (dev->desc)
		*info = dev->desc->info;
	FUNC1(dev->bus);
}