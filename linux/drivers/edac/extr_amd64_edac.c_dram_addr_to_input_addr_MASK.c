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
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amd64_pvt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,unsigned long,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC4(struct mem_ctl_info *mci, u64 dram_addr)
{
	struct amd64_pvt *pvt;
	int intlv_shift;
	u64 input_addr;

	pvt = mci->pvt_info;

	/*
	 * See the start of section 3.4.4 (p. 70, BKDG #26094, K8, revA-E)
	 * concerning translating a DramAddr to an InputAddr.
	 */
	intlv_shift = FUNC3(FUNC1(pvt, 0));
	input_addr = ((dram_addr >> intlv_shift) & FUNC0(35, 12)) +
		      (dram_addr & 0xfff);

	FUNC2(2, "  Intlv Shift=%d DramAddr=0x%lx maps to InputAddr=0x%lx\n",
		 intlv_shift, (unsigned long)dram_addr,
		 (unsigned long)input_addr);

	return input_addr;
}