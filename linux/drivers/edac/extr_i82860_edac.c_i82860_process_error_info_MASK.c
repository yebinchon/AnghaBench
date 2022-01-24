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
struct mem_ctl_info {TYPE_2__** csrows; } ;
struct i82860_error_info {int errsts2; int errsts; int eap; int /*<<< orphan*/  derrsyn; } ;
struct dimm_info {int* location; } ;
struct TYPE_4__ {TYPE_1__** channels; } ;
struct TYPE_3__ {struct dimm_info* dimm; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int PAGE_SHIFT ; 
 int FUNC0 (struct mem_ctl_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct mem_ctl_info *mci,
				struct i82860_error_info *info,
				int handle_errors)
{
	struct dimm_info *dimm;
	int row;

	if (!(info->errsts2 & 0x0003))
		return 0;

	if (!handle_errors)
		return 1;

	if ((info->errsts ^ info->errsts2) & 0x0003) {
		FUNC1(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
				     -1, -1, -1, "UE overwrote CE", "");
		info->errsts = info->errsts2;
	}

	info->eap >>= PAGE_SHIFT;
	row = FUNC0(mci, info->eap);
	dimm = mci->csrows[row]->channels[0]->dimm;

	if (info->errsts & 0x0002)
		FUNC1(HW_EVENT_ERR_UNCORRECTED, mci, 1,
				     info->eap, 0, 0,
				     dimm->location[0], dimm->location[1], -1,
				     "i82860 UE", "");
	else
		FUNC1(HW_EVENT_ERR_CORRECTED, mci, 1,
				     info->eap, 0, info->derrsyn,
				     dimm->location[0], dimm->location[1], -1,
				     "i82860 CE", "");

	return 1;
}