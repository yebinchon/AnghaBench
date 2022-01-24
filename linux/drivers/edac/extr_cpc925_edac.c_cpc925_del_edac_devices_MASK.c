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
struct cpc925_dev_info {int /*<<< orphan*/  ctl_name; int /*<<< orphan*/  (* exit ) (struct cpc925_dev_info*) ;int /*<<< orphan*/  pdev; TYPE_1__* edac_dev; scalar_t__ init; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct cpc925_dev_info* cpc925_devs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpc925_dev_info*) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct cpc925_dev_info *dev_info;

	for (dev_info = &cpc925_devs[0]; dev_info->init; dev_info++) {
		if (dev_info->edac_dev) {
			FUNC1(dev_info->edac_dev->dev);
			FUNC2(dev_info->edac_dev);
			FUNC3(dev_info->pdev);
		}

		if (dev_info->exit)
			dev_info->exit(dev_info);

		FUNC0(0, "Successfully deleted edac device for %s\n",
			 dev_info->ctl_name);
	}
}