#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vega12_hwmgr {scalar_t__ gfxoff_controlled_by_driver; } ;
struct pp_hwmgr {scalar_t__ backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_DisallowGfxOff ; 
 int FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pp_hwmgr *hwmgr)
{
	struct vega12_hwmgr *data =
			(struct vega12_hwmgr *)(hwmgr->backend);
	int ret = 0;

	if (data->gfxoff_controlled_by_driver)
		ret = FUNC0(hwmgr, PPSMC_MSG_DisallowGfxOff);

	return ret;
}