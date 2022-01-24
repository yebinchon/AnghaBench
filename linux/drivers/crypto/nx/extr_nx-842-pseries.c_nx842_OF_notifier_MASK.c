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
struct of_reconfig_data {int /*<<< orphan*/  prop; TYPE_2__* dn; } ;
struct nx842_devdata {TYPE_1__* dev; } ;
struct notifier_block {int dummy; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int NOTIFY_OK ; 
 unsigned long OF_RECONFIG_UPDATE_PROPERTY ; 
 int /*<<< orphan*/  devdata ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nx842_devdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *np, unsigned long action,
			     void *data)
{
	struct of_reconfig_data *upd = data;
	struct nx842_devdata *local_devdata;
	struct device_node *node = NULL;

	FUNC2();
	local_devdata = FUNC1(devdata);
	if (local_devdata)
		node = local_devdata->dev->of_node;

	if (local_devdata &&
			action == OF_RECONFIG_UPDATE_PROPERTY &&
			!FUNC4(upd->dn->name, node->name)) {
		FUNC3();
		FUNC0(upd->prop);
	} else
		FUNC3();

	return NOTIFY_OK;
}