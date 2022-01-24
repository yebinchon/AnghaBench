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
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  PSB_CR_2D_BLIT_STATUS ; 
 int /*<<< orphan*/  PSB_CR_BIF_FAULT ; 
 int /*<<< orphan*/  PSB_CR_BIF_INT_STAT ; 
 int /*<<< orphan*/  PSB_CR_EVENT_HOST_CLEAR ; 
 int /*<<< orphan*/  PSB_CR_EVENT_HOST_CLEAR2 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int _PSB_CBI_STAT_FAULT_2D ; 
 int _PSB_CBI_STAT_FAULT_CACHE ; 
 int _PSB_CBI_STAT_FAULT_HOST ; 
 int _PSB_CBI_STAT_FAULT_ISP ; 
 int _PSB_CBI_STAT_FAULT_PBE ; 
 int _PSB_CBI_STAT_FAULT_TA ; 
 int _PSB_CBI_STAT_FAULT_TSP ; 
 int _PSB_CBI_STAT_FAULT_USSEPDS ; 
 int _PSB_CBI_STAT_FAULT_VDM ; 
 int _PSB_CBI_STAT_PF_N_RW ; 
 int _PSB_CE2_BIF_REQUESTER_FAULT ; 
 int _PSB_CE_TWOD_COMPLETE ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev, u32 stat_1, u32 stat_2)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	u32 val, addr;
	int error = false;

	if (stat_1 & _PSB_CE_TWOD_COMPLETE)
		val = FUNC1(PSB_CR_2D_BLIT_STATUS);

	if (stat_2 & _PSB_CE2_BIF_REQUESTER_FAULT) {
		val = FUNC1(PSB_CR_BIF_INT_STAT);
		addr = FUNC1(PSB_CR_BIF_FAULT);
		if (val) {
			if (val & _PSB_CBI_STAT_PF_N_RW)
				FUNC0("SGX MMU page fault:");
			else
				FUNC0("SGX MMU read / write protection fault:");

			if (val & _PSB_CBI_STAT_FAULT_CACHE)
				FUNC0("\tCache requestor");
			if (val & _PSB_CBI_STAT_FAULT_TA)
				FUNC0("\tTA requestor");
			if (val & _PSB_CBI_STAT_FAULT_VDM)
				FUNC0("\tVDM requestor");
			if (val & _PSB_CBI_STAT_FAULT_2D)
				FUNC0("\t2D requestor");
			if (val & _PSB_CBI_STAT_FAULT_PBE)
				FUNC0("\tPBE requestor");
			if (val & _PSB_CBI_STAT_FAULT_TSP)
				FUNC0("\tTSP requestor");
			if (val & _PSB_CBI_STAT_FAULT_ISP)
				FUNC0("\tISP requestor");
			if (val & _PSB_CBI_STAT_FAULT_USSEPDS)
				FUNC0("\tUSSEPDS requestor");
			if (val & _PSB_CBI_STAT_FAULT_HOST)
				FUNC0("\tHost requestor");

			FUNC0("\tMMU failing address is 0x%08x.\n",
				  (unsigned int)addr);
			error = true;
		}
	}

	/* Clear bits */
	FUNC2(stat_1, PSB_CR_EVENT_HOST_CLEAR);
	FUNC2(stat_2, PSB_CR_EVENT_HOST_CLEAR2);
	FUNC1(PSB_CR_EVENT_HOST_CLEAR2);
}