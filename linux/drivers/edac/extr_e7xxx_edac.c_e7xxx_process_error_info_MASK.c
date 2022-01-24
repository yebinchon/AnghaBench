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
struct mem_ctl_info {int dummy; } ;
struct e7xxx_error_info {int dram_ferr; int dram_nerr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,struct e7xxx_error_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,struct e7xxx_error_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*) ; 

__attribute__((used)) static int FUNC4(struct mem_ctl_info *mci,
				struct e7xxx_error_info *info,
				int handle_errors)
{
	int error_found;

	error_found = 0;

	/* decode and report errors */
	if (info->dram_ferr & 1) {	/* check first error correctable */
		error_found = 1;

		if (handle_errors)
			FUNC0(mci, info);
	}

	if (info->dram_ferr & 2) {	/* check first error uncorrectable */
		error_found = 1;

		if (handle_errors)
			FUNC2(mci, info);
	}

	if (info->dram_nerr & 1) {	/* check next error correctable */
		error_found = 1;

		if (handle_errors) {
			if (info->dram_ferr & 1)
				FUNC1(mci);
			else
				FUNC0(mci, info);
		}
	}

	if (info->dram_nerr & 2) {	/* check next error uncorrectable */
		error_found = 1;

		if (handle_errors) {
			if (info->dram_ferr & 2)
				FUNC3(mci);
			else
				FUNC2(mci, info);
		}
	}

	return error_found;
}