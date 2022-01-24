#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i3c_master_controller {TYPE_1__* ops; } ;
struct i3c_dev_desc {TYPE_2__* ibi; } ;
struct TYPE_4__ {int enabled; int /*<<< orphan*/  all_ibis_handled; int /*<<< orphan*/  pending_ibis; } ;
struct TYPE_3__ {int (* disable_ibi ) (struct i3c_dev_desc*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct i3c_master_controller* FUNC1 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct i3c_dev_desc *dev)
{
	struct i3c_master_controller *master;
	int ret;

	if (!dev->ibi)
		return -EINVAL;

	master = FUNC1(dev);
	ret = master->ops->disable_ibi(dev);
	if (ret)
		return ret;

	FUNC2(&dev->ibi->all_ibis_handled);
	if (FUNC0(&dev->ibi->pending_ibis))
		FUNC4(&dev->ibi->all_ibis_handled);

	dev->ibi->enabled = false;

	return 0;
}