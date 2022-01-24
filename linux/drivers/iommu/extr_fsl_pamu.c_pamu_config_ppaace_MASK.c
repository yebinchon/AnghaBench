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
typedef  int u32 ;
struct TYPE_7__ {int snpid; } ;
struct TYPE_8__ {TYPE_3__ to_host; } ;
struct TYPE_5__ {int omi; } ;
struct TYPE_6__ {TYPE_1__ index_ot; } ;
struct paace {int wbah; unsigned long fspi; unsigned long twbah; int /*<<< orphan*/  addr_bitfields; int /*<<< orphan*/  impl_attr; int /*<<< orphan*/  win_bitfields; TYPE_4__ domain_attr; TYPE_2__ op_encode; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int OME_NUMBER_ENTRIES ; 
 int /*<<< orphan*/  PAACE_AF_AP ; 
 int PAACE_ATM_WINDOW_XLATE ; 
 int /*<<< orphan*/  PAACE_IA_ATM ; 
 int /*<<< orphan*/  PAACE_IA_CID ; 
 int /*<<< orphan*/  PAACE_IA_OTM ; 
 int /*<<< orphan*/  PAACE_IA_WCE ; 
 int PAACE_OTM_INDEXED ; 
 int /*<<< orphan*/  PAACE_WIN_TWBAL ; 
 int PAMU_PAGE_SHIFT ; 
 int PAMU_PAGE_SIZE ; 
 int /*<<< orphan*/  PPAACE_AF_MW ; 
 int /*<<< orphan*/  PPAACE_AF_WBAL ; 
 int /*<<< orphan*/  PPAACE_AF_WSE ; 
 unsigned long ULONG_MAX ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (int) ; 
 struct paace* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct paace*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC8(int liodn, phys_addr_t win_addr, phys_addr_t win_size,
		       u32 omi, unsigned long rpn, u32 snoopid, u32 stashid,
		       u32 subwin_cnt, int prot)
{
	struct paace *ppaace;
	unsigned long fspi;

	if ((win_size & (win_size - 1)) || win_size < PAMU_PAGE_SIZE) {
		FUNC6("window size too small or not a power of two %pa\n",
			 &win_size);
		return -EINVAL;
	}

	if (win_addr & (win_size - 1)) {
		FUNC6("window address is not aligned with window size\n");
		return -EINVAL;
	}

	ppaace = FUNC4(liodn);
	if (!ppaace)
		return -ENOENT;

	/* window size is 2^(WSE+1) bytes */
	FUNC7(ppaace->addr_bitfields, PPAACE_AF_WSE,
	       FUNC0(win_size));

	FUNC5(ppaace);

	ppaace->wbah = win_addr >> (PAMU_PAGE_SHIFT + 20);
	FUNC7(ppaace->addr_bitfields, PPAACE_AF_WBAL,
	       (win_addr >> PAMU_PAGE_SHIFT));

	/* set up operation mapping if it's configured */
	if (omi < OME_NUMBER_ENTRIES) {
		FUNC7(ppaace->impl_attr, PAACE_IA_OTM, PAACE_OTM_INDEXED);
		ppaace->op_encode.index_ot.omi = omi;
	} else if (~omi != 0) {
		FUNC6("bad operation mapping index: %d\n", omi);
		return -EINVAL;
	}

	/* configure stash id */
	if (~stashid != 0)
		FUNC7(ppaace->impl_attr, PAACE_IA_CID, stashid);

	/* configure snoop id */
	if (~snoopid != 0)
		ppaace->domain_attr.to_host.snpid = snoopid;

	if (subwin_cnt) {
		/* The first entry is in the primary PAACE instead */
		fspi = FUNC3(subwin_cnt - 1);
		if (fspi == ULONG_MAX) {
			FUNC6("spaace indexes exhausted\n");
			return -EINVAL;
		}

		/* window count is 2^(WCE+1) bytes */
		FUNC7(ppaace->impl_attr, PAACE_IA_WCE,
		       FUNC1(subwin_cnt));
		FUNC7(ppaace->addr_bitfields, PPAACE_AF_MW, 0x1);
		ppaace->fspi = fspi;
	} else {
		FUNC7(ppaace->impl_attr, PAACE_IA_ATM, PAACE_ATM_WINDOW_XLATE);
		ppaace->twbah = rpn >> 20;
		FUNC7(ppaace->win_bitfields, PAACE_WIN_TWBAL, rpn);
		FUNC7(ppaace->addr_bitfields, PAACE_AF_AP, prot);
		FUNC7(ppaace->impl_attr, PAACE_IA_WCE, 0);
		FUNC7(ppaace->addr_bitfields, PPAACE_AF_MW, 0);
	}
	FUNC2();

	return 0;
}