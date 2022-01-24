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
typedef  int u16 ;
struct mem_ctl_info {int /*<<< orphan*/  ctl_name; struct cpc925_mc_pdata* pvt_info; } ;
struct cpc925_mc_pdata {scalar_t__ vbase; } ;

/* Variables and functions */
 int CECC_EXCP_DETECTED ; 
 int ECC_EXCP_DETECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MESR_ECC_SYN_H_MASK ; 
 int MESR_ECC_SYN_L_MASK ; 
 scalar_t__ REG_APIEXCP_OFFSET ; 
 scalar_t__ REG_APIMASK_OFFSET ; 
 scalar_t__ REG_MCCR_OFFSET ; 
 scalar_t__ REG_MCRER_OFFSET ; 
 scalar_t__ REG_MEAR_OFFSET ; 
 scalar_t__ REG_MESR_OFFSET ; 
 scalar_t__ REG_MSCR_OFFSET ; 
 scalar_t__ REG_MSPR_OFFSET ; 
 scalar_t__ REG_MSRER_OFFSET ; 
 scalar_t__ REG_MSRSR_OFFSET ; 
 int UECC_EXCP_DETECTED ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct mem_ctl_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,int,unsigned long*,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,unsigned long,unsigned long,int,int,int,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct mem_ctl_info *mci)
{
	struct cpc925_mc_pdata *pdata = mci->pvt_info;
	u32 apiexcp;
	u32 mear;
	u32 mesr;
	u16 syndrome;
	unsigned long pfn = 0, offset = 0;
	int csrow = 0, channel = 0;

	/* APIEXCP is cleared when read */
	apiexcp = FUNC0(pdata->vbase + REG_APIEXCP_OFFSET);
	if ((apiexcp & ECC_EXCP_DETECTED) == 0)
		return;

	mesr = FUNC0(pdata->vbase + REG_MESR_OFFSET);
	syndrome = mesr | (MESR_ECC_SYN_H_MASK | MESR_ECC_SYN_L_MASK);

	mear = FUNC0(pdata->vbase + REG_MEAR_OFFSET);

	/* Revert column/row addresses into page frame number, etc */
	FUNC2(mci, mear, &pfn, &offset, &csrow);

	if (apiexcp & CECC_EXCP_DETECTED) {
		FUNC3(mci, KERN_INFO, "DRAM CECC Fault\n");
		channel = FUNC1(mci, syndrome);
		FUNC4(HW_EVENT_ERR_CORRECTED, mci, 1,
				     pfn, offset, syndrome,
				     csrow, channel, -1,
				     mci->ctl_name, "");
	}

	if (apiexcp & UECC_EXCP_DETECTED) {
		FUNC3(mci, KERN_INFO, "DRAM UECC Fault\n");
		FUNC4(HW_EVENT_ERR_UNCORRECTED, mci, 1,
				     pfn, offset, 0,
				     csrow, -1, -1,
				     mci->ctl_name, "");
	}

	FUNC3(mci, KERN_INFO, "Dump registers:\n");
	FUNC3(mci, KERN_INFO, "APIMASK		0x%08x\n",
		FUNC0(pdata->vbase + REG_APIMASK_OFFSET));
	FUNC3(mci, KERN_INFO, "APIEXCP		0x%08x\n",
		apiexcp);
	FUNC3(mci, KERN_INFO, "Mem Scrub Ctrl	0x%08x\n",
		FUNC0(pdata->vbase + REG_MSCR_OFFSET));
	FUNC3(mci, KERN_INFO, "Mem Scrub Rge Start	0x%08x\n",
		FUNC0(pdata->vbase + REG_MSRSR_OFFSET));
	FUNC3(mci, KERN_INFO, "Mem Scrub Rge End	0x%08x\n",
		FUNC0(pdata->vbase + REG_MSRER_OFFSET));
	FUNC3(mci, KERN_INFO, "Mem Scrub Pattern	0x%08x\n",
		FUNC0(pdata->vbase + REG_MSPR_OFFSET));
	FUNC3(mci, KERN_INFO, "Mem Chk Ctrl		0x%08x\n",
		FUNC0(pdata->vbase + REG_MCCR_OFFSET));
	FUNC3(mci, KERN_INFO, "Mem Chk Rge End	0x%08x\n",
		FUNC0(pdata->vbase + REG_MCRER_OFFSET));
	FUNC3(mci, KERN_INFO, "Mem Err Address	0x%08x\n",
		mesr);
	FUNC3(mci, KERN_INFO, "Mem Err Syndrome	0x%08x\n",
		syndrome);
}