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
struct TYPE_4__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* free_ibi ) (struct i3c_dev_desc*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i3c_dev_desc*) ; 
 struct i3c_master_controller* FUNC2 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i3c_dev_desc*) ; 

void FUNC5(struct i3c_dev_desc *dev)
{
	struct i3c_master_controller *master = FUNC2(dev);

	if (!dev->ibi)
		return;

	if (FUNC0(dev->ibi->enabled))
		FUNC0(FUNC1(dev));

	master->ops->free_ibi(dev);
	FUNC3(dev->ibi);
	dev->ibi = NULL;
}