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
struct qxl_device {int /*<<< orphan*/  monitors_config_bo; TYPE_1__* ram_header; int /*<<< orphan*/ * monitors_config; } ;
struct TYPE_2__ {scalar_t__ monitors_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct qxl_device *qdev)
{
	int ret;

	qdev->monitors_config = NULL;
	qdev->ram_header->monitors_config = 0;

	FUNC0(qdev->monitors_config_bo);
	ret = FUNC1(qdev->monitors_config_bo);
	if (ret)
		return ret;

	FUNC2(&qdev->monitors_config_bo);
	return 0;
}