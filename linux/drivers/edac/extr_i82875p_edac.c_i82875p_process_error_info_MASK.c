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
struct mem_ctl_info {TYPE_1__** csrows; } ;
struct i82875p_error_info {int errsts; int errsts2; int eap; int des; int /*<<< orphan*/  derrsyn; } ;
struct TYPE_2__ {int nr_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int PAGE_SHIFT ; 
 int FUNC0 (struct mem_ctl_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct mem_ctl_info *mci,
				struct i82875p_error_info *info,
				int handle_errors)
{
	int row, multi_chan;

	multi_chan = mci->csrows[0]->nr_channels - 1;

	if (!(info->errsts & 0x0081))
		return 0;

	if (!handle_errors)
		return 1;

	if ((info->errsts ^ info->errsts2) & 0x0081) {
		FUNC1(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
				     -1, -1, -1,
				     "UE overwrote CE", "");
		info->errsts = info->errsts2;
	}

	info->eap >>= PAGE_SHIFT;
	row = FUNC0(mci, info->eap);

	if (info->errsts & 0x0080)
		FUNC1(HW_EVENT_ERR_UNCORRECTED, mci, 1,
				     info->eap, 0, 0,
				     row, -1, -1,
				     "i82875p UE", "");
	else
		FUNC1(HW_EVENT_ERR_CORRECTED, mci, 1,
				     info->eap, 0, info->derrsyn,
				     row, multi_chan ? (info->des & 0x1) : 0,
				     -1, "i82875p CE", "");

	return 1;
}