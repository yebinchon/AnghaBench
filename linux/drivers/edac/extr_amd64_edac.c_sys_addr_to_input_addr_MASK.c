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
typedef  scalar_t__ u64 ;
struct mem_ctl_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mem_ctl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,scalar_t__) ; 

__attribute__((used)) static u64 FUNC3(struct mem_ctl_info *mci, u64 sys_addr)
{
	u64 input_addr;

	input_addr =
	    FUNC0(mci, FUNC2(mci, sys_addr));

	FUNC1(2, "SysAddr 0x%lx translates to InputAddr 0x%lx\n",
		 (unsigned long)sys_addr, (unsigned long)input_addr);

	return input_addr;
}