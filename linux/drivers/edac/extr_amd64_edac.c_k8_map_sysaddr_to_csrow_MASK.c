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
struct err_info {scalar_t__ csrow; int channel; int /*<<< orphan*/  err_code; int /*<<< orphan*/  syndrome; int /*<<< orphan*/  src_mci; } ;
struct amd64_pvt {int nbcfg; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ERR_CHANNEL ; 
 int /*<<< orphan*/  ERR_CSROW ; 
 int /*<<< orphan*/  ERR_NODE ; 
 int NBCFG_CHIPKILL ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct err_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*,int) ; 
 int FUNC5 (struct mem_ctl_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct mem_ctl_info *mci, u64 sys_addr,
				    struct err_info *err)
{
	struct amd64_pvt *pvt = mci->pvt_info;

	FUNC3(sys_addr, err);

	/*
	 * Find out which node the error address belongs to. This may be
	 * different from the node that detected the error.
	 */
	err->src_mci = FUNC4(mci, sys_addr);
	if (!err->src_mci) {
		FUNC1(mci, "failed to map error addr 0x%lx to a node\n",
			     (unsigned long)sys_addr);
		err->err_code = ERR_NODE;
		return;
	}

	/* Now map the sys_addr to a CSROW */
	err->csrow = FUNC6(err->src_mci, sys_addr);
	if (err->csrow < 0) {
		err->err_code = ERR_CSROW;
		return;
	}

	/* CHIPKILL enabled */
	if (pvt->nbcfg & NBCFG_CHIPKILL) {
		err->channel = FUNC5(mci, err->syndrome);
		if (err->channel < 0) {
			/*
			 * Syndrome didn't map, so we don't know which of the
			 * 2 DIMMs is in error. So we need to ID 'both' of them
			 * as suspect.
			 */
			FUNC2(err->src_mci, "unknown syndrome 0x%04x - "
				      "possible error reporting race\n",
				      err->syndrome);
			err->err_code = ERR_CHANNEL;
			return;
		}
	} else {
		/*
		 * non-chipkill ecc mode
		 *
		 * The k8 documentation is unclear about how to determine the
		 * channel number when using non-chipkill memory.  This method
		 * was obtained from email communication with someone at AMD.
		 * (Wish the email was placed in this comment - norsk)
		 */
		err->channel = ((sys_addr & FUNC0(3)) != 0);
	}
}