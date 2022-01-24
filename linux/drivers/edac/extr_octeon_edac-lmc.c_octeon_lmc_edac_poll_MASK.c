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
union cvmx_lmcx_mem_cfg0 {void* u64; TYPE_2__ s; } ;
struct TYPE_3__ {int fdimm; int fbunk; int fbank; int frow; int fcol; } ;
union cvmx_lmcx_fadr {TYPE_1__ cn30xx; void* u64; } ;
struct mem_ctl_info {int /*<<< orphan*/  mc_idx; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC6(struct mem_ctl_info *mci)
{
	union cvmx_lmcx_mem_cfg0 cfg0;
	bool do_clear = false;
	char msg[64];

	cfg0.u64 = FUNC2(FUNC1(mci->mc_idx));
	if (cfg0.s.sec_err || cfg0.s.ded_err) {
		union cvmx_lmcx_fadr fadr;
		fadr.u64 = FUNC2(FUNC0(mci->mc_idx));
		FUNC5(msg, sizeof(msg),
			 "DIMM %d rank %d bank %d row %d col %d",
			 fadr.cn30xx.fdimm, fadr.cn30xx.fbunk,
			 fadr.cn30xx.fbank, fadr.cn30xx.frow, fadr.cn30xx.fcol);
	}

	if (cfg0.s.sec_err) {
		FUNC4(HW_EVENT_ERR_CORRECTED, mci, 1, 0, 0, 0,
				     -1, -1, -1, msg, "");
		cfg0.s.sec_err = -1;	/* Done, re-arm */
		do_clear = true;
	}

	if (cfg0.s.ded_err) {
		FUNC4(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
				     -1, -1, -1, msg, "");
		cfg0.s.ded_err = -1;	/* Done, re-arm */
		do_clear = true;
	}
	if (do_clear)
		FUNC3(FUNC1(mci->mc_idx), cfg0.u64);
}