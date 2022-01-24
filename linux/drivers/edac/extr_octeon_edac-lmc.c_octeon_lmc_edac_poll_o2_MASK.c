#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int sec_err; int ded_err; } ;
union cvmx_lmcx_int {void* u64; TYPE_2__ s; } ;
struct TYPE_3__ {int fdimm; int fbunk; int fbank; int frow; int fcol; } ;
union cvmx_lmcx_fadr {TYPE_1__ cn61xx; void* u64; } ;
struct octeon_lmc_pvt {int error_type; int dimm; int rank; int bank; int row; int col; scalar_t__ inject; } ;
struct mem_ctl_info {int /*<<< orphan*/  mc_idx; struct octeon_lmc_pvt* pvt_info; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,char*,char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC7(struct mem_ctl_info *mci)
{
	struct octeon_lmc_pvt *pvt = mci->pvt_info;
	union cvmx_lmcx_int int_reg;
	bool do_clear = false;
	char msg[64];

	if (!pvt->inject)
		int_reg.u64 = FUNC2(FUNC1(mci->mc_idx));
	else {
		int_reg.u64 = 0;
		if (pvt->error_type == 1)
			int_reg.s.sec_err = 1;
		if (pvt->error_type == 2)
			int_reg.s.ded_err = 1;
	}

	if (int_reg.s.sec_err || int_reg.s.ded_err) {
		union cvmx_lmcx_fadr fadr;
		if (FUNC5(!pvt->inject))
			fadr.u64 = FUNC2(FUNC0(mci->mc_idx));
		else {
			fadr.cn61xx.fdimm = pvt->dimm;
			fadr.cn61xx.fbunk = pvt->rank;
			fadr.cn61xx.fbank = pvt->bank;
			fadr.cn61xx.frow = pvt->row;
			fadr.cn61xx.fcol = pvt->col;
		}
		FUNC6(msg, sizeof(msg),
			 "DIMM %d rank %d bank %d row %d col %d",
			 fadr.cn61xx.fdimm, fadr.cn61xx.fbunk,
			 fadr.cn61xx.fbank, fadr.cn61xx.frow, fadr.cn61xx.fcol);
	}

	if (int_reg.s.sec_err) {
		FUNC4(HW_EVENT_ERR_CORRECTED, mci, 1, 0, 0, 0,
				     -1, -1, -1, msg, "");
		int_reg.s.sec_err = -1;	/* Done, re-arm */
		do_clear = true;
	}

	if (int_reg.s.ded_err) {
		FUNC4(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
				     -1, -1, -1, msg, "");
		int_reg.s.ded_err = -1;	/* Done, re-arm */
		do_clear = true;
	}

	if (do_clear) {
		if (FUNC5(!pvt->inject))
			FUNC3(FUNC1(mci->mc_idx), int_reg.u64);
		else
			pvt->inject = 0;
	}
}