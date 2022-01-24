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
typedef  int u64 ;
typedef  int u32 ;
struct i3c_device_info {int dcr; int bcr; int pid; int /*<<< orphan*/  dyn_addr; } ;
struct cdns_i3c_master {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct i3c_device_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cdns_i3c_master *master,
					   unsigned int slot,
					   struct i3c_device_info *info)
{
	u32 rr;

	FUNC4(info, 0, sizeof(*info));
	rr = FUNC5(master->regs + FUNC0(slot));
	info->dyn_addr = FUNC1(rr);
	rr = FUNC5(master->regs + FUNC3(slot));
	info->dcr = rr;
	info->bcr = rr >> 8;
	info->pid = rr >> 16;
	info->pid |= (u64)FUNC5(master->regs + FUNC2(slot)) << 16;
}