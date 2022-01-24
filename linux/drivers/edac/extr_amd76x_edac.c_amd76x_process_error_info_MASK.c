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
typedef  size_t u32 ;
struct mem_ctl_info {int /*<<< orphan*/  ctl_name; TYPE_1__** csrows; } ;
struct amd76x_error_info {int ecc_mode_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  first_page; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct mem_ctl_info *mci,
				struct amd76x_error_info *info,
				int handle_errors)
{
	int error_found;
	u32 row;

	error_found = 0;

	/*
	 *      Check for an uncorrectable error
	 */
	if (info->ecc_mode_status & FUNC0(8)) {
		error_found = 1;

		if (handle_errors) {
			row = (info->ecc_mode_status >> 4) & 0xf;
			FUNC1(HW_EVENT_ERR_UNCORRECTED, mci, 1,
					     mci->csrows[row]->first_page, 0, 0,
					     row, 0, -1,
					     mci->ctl_name, "");
		}
	}

	/*
	 *      Check for a correctable error
	 */
	if (info->ecc_mode_status & FUNC0(9)) {
		error_found = 1;

		if (handle_errors) {
			row = info->ecc_mode_status & 0xf;
			FUNC1(HW_EVENT_ERR_CORRECTED, mci, 1,
					     mci->csrows[row]->first_page, 0, 0,
					     row, 0, -1,
					     mci->ctl_name, "");
		}
	}

	return error_found;
}