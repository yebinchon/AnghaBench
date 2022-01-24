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
struct i5400_error_info {int ferr_fat_fbd; } ;

/* Variables and functions */
 int FERR_FAT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,struct i5400_error_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,struct i5400_error_info*) ; 

__attribute__((used)) static void FUNC2(struct mem_ctl_info *mci,
				struct i5400_error_info *info)
{	u32 allErrors;

	/* First handle any fatal errors that occurred */
	allErrors = (info->ferr_fat_fbd & FERR_FAT_MASK);
	FUNC0(mci, info, allErrors);

	/* now handle any non-fatal errors that occurred */
	FUNC1(mci, info);
}