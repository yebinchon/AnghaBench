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
struct i40iw_sc_dev {TYPE_2__* hmc_info; } ;
struct i40iw_device {int /*<<< orphan*/ * hmc_info_mem; int /*<<< orphan*/ * iw_msixtbl; int /*<<< orphan*/ * ceqlist; int /*<<< orphan*/ * mem_resources; int /*<<< orphan*/  obj_mem; int /*<<< orphan*/  hw; struct i40iw_sc_dev sc_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * sd_entry; } ;
struct TYPE_4__ {TYPE_1__ sd_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct i40iw_device *iwdev)
{
	struct i40iw_sc_dev *dev = &iwdev->sc_dev;

	FUNC0(&iwdev->hw, &iwdev->obj_mem);
	FUNC1(dev->hmc_info->sd_table.sd_entry);
	dev->hmc_info->sd_table.sd_entry = NULL;
	FUNC1(iwdev->mem_resources);
	iwdev->mem_resources = NULL;
	FUNC1(iwdev->ceqlist);
	iwdev->ceqlist = NULL;
	FUNC1(iwdev->iw_msixtbl);
	iwdev->iw_msixtbl = NULL;
	FUNC1(iwdev->hmc_info_mem);
	iwdev->hmc_info_mem = NULL;
}