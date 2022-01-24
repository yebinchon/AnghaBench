#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cmd_done; scalar_t__ in_bl_mode; } ;
struct f34_data {TYPE_1__ v7; TYPE_3__* fn; } ;
struct TYPE_8__ {TYPE_2__* driver; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq_mask; TYPE_4__* rmi_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_irq_bits ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  F34_ENABLE_WAIT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct f34_data*) ; 
 int FUNC2 (struct f34_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct f34_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v7_CMD_ENABLE_FLASH_PROG ; 

__attribute__((used)) static int FUNC5(struct f34_data *f34)
{
	int ret;

	f34->fn->rmi_dev->driver->set_irq_bits(f34->fn->rmi_dev, f34->fn->irq_mask);

	ret = FUNC1(f34);
	if (ret < 0)
		return ret;

	if (f34->v7.in_bl_mode)
		return 0;

	FUNC0(&f34->v7.cmd_done);

	ret = FUNC3(f34, v7_CMD_ENABLE_FLASH_PROG);
	if (ret < 0)
		return ret;

	ret = FUNC2(f34, F34_ENABLE_WAIT_MS);
	if (ret < 0)
		return ret;

	return 0;
}