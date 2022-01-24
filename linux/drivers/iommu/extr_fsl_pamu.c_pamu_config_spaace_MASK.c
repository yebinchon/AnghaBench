#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_7__ {scalar_t__ omi; } ;
struct TYPE_8__ {TYPE_3__ index_ot; } ;
struct TYPE_5__ {scalar_t__ snpid; } ;
struct TYPE_6__ {TYPE_1__ to_host; } ;
struct paace {scalar_t__ addr_bitfields; scalar_t__ win_bitfields; scalar_t__ impl_attr; unsigned long twbah; TYPE_4__ op_encode; TYPE_2__ domain_attr; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ OME_NUMBER_ENTRIES ; 
 int /*<<< orphan*/  PAACE_AF_AP ; 
 int /*<<< orphan*/  PAACE_AF_V ; 
 scalar_t__ PAACE_ATM_WINDOW_XLATE ; 
 int /*<<< orphan*/  PAACE_IA_ATM ; 
 int /*<<< orphan*/  PAACE_IA_CID ; 
 int /*<<< orphan*/  PAACE_IA_OTM ; 
 scalar_t__ PAACE_OTM_INDEXED ; 
 scalar_t__ PAACE_V_VALID ; 
 int /*<<< orphan*/  PAACE_WIN_SWSE ; 
 int /*<<< orphan*/  PAACE_WIN_TWBAL ; 
 int PAMU_PAGE_SIZE ; 
 int /*<<< orphan*/  SPAACE_AF_LIODN ; 
 unsigned long ULONG_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct paace* FUNC2 (int) ; 
 struct paace* FUNC3 (struct paace*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct paace*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(int liodn, u32 subwin_cnt, u32 subwin,
		       phys_addr_t subwin_size, u32 omi, unsigned long rpn,
		       u32 snoopid, u32 stashid, int enable, int prot)
{
	struct paace *paace;

	/* setup sub-windows */
	if (!subwin_cnt) {
		FUNC5("Invalid subwindow count\n");
		return -EINVAL;
	}

	paace = FUNC2(liodn);
	if (subwin > 0 && subwin < subwin_cnt && paace) {
		paace = FUNC3(paace, subwin - 1);

		if (paace && !(paace->addr_bitfields & PAACE_V_VALID)) {
			FUNC4(paace);
			FUNC6(paace->addr_bitfields, SPAACE_AF_LIODN, liodn);
		}
	}

	if (!paace) {
		FUNC5("Invalid liodn entry\n");
		return -ENOENT;
	}

	if ((subwin_size & (subwin_size - 1)) || subwin_size < PAMU_PAGE_SIZE) {
		FUNC5("subwindow size out of range, or not a power of 2\n");
		return -EINVAL;
	}

	if (rpn == ULONG_MAX) {
		FUNC5("real page number out of range\n");
		return -EINVAL;
	}

	/* window size is 2^(WSE+1) bytes */
	FUNC6(paace->win_bitfields, PAACE_WIN_SWSE,
	       FUNC0(subwin_size));

	FUNC6(paace->impl_attr, PAACE_IA_ATM, PAACE_ATM_WINDOW_XLATE);
	paace->twbah = rpn >> 20;
	FUNC6(paace->win_bitfields, PAACE_WIN_TWBAL, rpn);
	FUNC6(paace->addr_bitfields, PAACE_AF_AP, prot);

	/* configure snoop id */
	if (~snoopid != 0)
		paace->domain_attr.to_host.snpid = snoopid;

	/* set up operation mapping if it's configured */
	if (omi < OME_NUMBER_ENTRIES) {
		FUNC6(paace->impl_attr, PAACE_IA_OTM, PAACE_OTM_INDEXED);
		paace->op_encode.index_ot.omi = omi;
	} else if (~omi != 0) {
		FUNC5("bad operation mapping index: %d\n", omi);
		return -EINVAL;
	}

	if (~stashid != 0)
		FUNC6(paace->impl_attr, PAACE_IA_CID, stashid);

	FUNC7();

	if (enable)
		FUNC6(paace->addr_bitfields, PAACE_AF_V, PAACE_V_VALID);

	FUNC1();

	return 0;
}