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
struct mem_ctl_info {int /*<<< orphan*/  mc_idx; } ;
struct i3000_error_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,struct i3000_error_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,struct i3000_error_info*,int) ; 

__attribute__((used)) static void FUNC3(struct mem_ctl_info *mci)
{
	struct i3000_error_info info;

	FUNC0(1, "MC%d\n", mci->mc_idx);
	FUNC1(mci, &info);
	FUNC2(mci, &info, 1);
}