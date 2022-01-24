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
struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int dummy; } ;
struct TYPE_2__ {struct i3c_master_controller* master; } ;
struct i3c_dev_desc {int /*<<< orphan*/  ibi_lock; struct i3c_device_info info; TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct i3c_dev_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct i3c_dev_desc* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct i3c_dev_desc *
FUNC3(struct i3c_master_controller *master,
			 const struct i3c_device_info *info)
{
	struct i3c_dev_desc *dev;

	dev = FUNC1(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return FUNC0(-ENOMEM);

	dev->common.master = master;
	dev->info = *info;
	FUNC2(&dev->ibi_lock);

	return dev;
}