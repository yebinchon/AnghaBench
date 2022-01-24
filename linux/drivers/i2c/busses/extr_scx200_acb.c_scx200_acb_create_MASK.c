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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {TYPE_1__ dev; } ;
struct scx200_acb_iface {struct scx200_acb_iface* next; struct i2c_adapter adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct scx200_acb_iface* scx200_acb_list ; 
 int /*<<< orphan*/  scx200_acb_list_mutex ; 
 int FUNC5 (struct scx200_acb_iface*) ; 
 int /*<<< orphan*/  FUNC6 (struct scx200_acb_iface*) ; 

__attribute__((used)) static int FUNC7(struct scx200_acb_iface *iface)
{
	struct i2c_adapter *adapter;
	int rc;

	adapter = &iface->adapter;

	rc = FUNC5(iface);
	if (rc) {
		FUNC4("probe failed\n");
		return rc;
	}

	FUNC6(iface);

	if (FUNC0(adapter) < 0) {
		FUNC3("failed to register\n");
		return -ENODEV;
	}

	if (!adapter->dev.parent) {
		/* If there's no dev, we're tracking (ISA) ifaces manually */
		FUNC1(&scx200_acb_list_mutex);
		iface->next = scx200_acb_list;
		scx200_acb_list = iface;
		FUNC2(&scx200_acb_list_mutex);
	}

	return 0;
}