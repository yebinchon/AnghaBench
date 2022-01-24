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
typedef  int u32 ;
struct mem_ctl_info {int dummy; } ;
struct e7xxx_error_info {int dram_uelog_add; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct mem_ctl_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,char*,char*) ; 

__attribute__((used)) static void FUNC3(struct mem_ctl_info *mci, struct e7xxx_error_info *info)
{
	u32 error_2b, block_page;
	int row;

	FUNC0(3, "\n");
	/* read the error address */
	error_2b = info->dram_uelog_add;
	/* FIXME - should use PAGE_SHIFT */
	block_page = error_2b >> 6;	/* convert to 4k address */
	row = FUNC1(mci, block_page);

	FUNC2(HW_EVENT_ERR_UNCORRECTED, mci, 1, block_page, 0, 0,
			     row, -1, -1, "e7xxx UE", "");
}