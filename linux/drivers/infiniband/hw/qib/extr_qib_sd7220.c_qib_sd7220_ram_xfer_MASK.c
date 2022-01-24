#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {int /*<<< orphan*/  sdepb_lock; } ;

/* Variables and functions */
 int EPB_DATA_MASK ; 
 unsigned long long EPB_IB_UC_CS_SHF ; 
 int EPB_MADDRH ; 
 int EPB_MADDRL ; 
 unsigned long long EPB_PCIE_UC_CS_SHF ; 
 int EPB_RD ; 
 int EPB_ROMDATA ; 
 int EPB_ROM_R ; 
 int EPB_ROM_W ; 
 int EPB_TRANS_RDY ; 
 int EPB_TRANS_TRIES ; 
 int EPB_UC_CTL ; 
#define  IB_7220_SERDES 130 
#define  PCIE_SERDES0 129 
#define  PCIE_SERDES1 128 
 int FUNC0 (struct qib_devdata*,int,int) ; 
 int FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  kr_ibsd_epb_transaction_reg ; 
 int /*<<< orphan*/  kr_pciesd_epb_transaction_reg ; 
 int FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct qib_devdata *dd, int sdnum, u32 loc,
			       u8 *buf, int cnt, int rd_notwr)
{
	u16 trans;
	u64 transval;
	u64 csbit;
	int owned;
	int tries;
	int sofar;
	int addr;
	int ret;
	unsigned long flags;

	/* Pick appropriate transaction reg and "Chip select" for this serdes */
	switch (sdnum) {
	case IB_7220_SERDES:
		csbit = 1ULL << EPB_IB_UC_CS_SHF;
		trans = kr_ibsd_epb_transaction_reg;
		break;

	case PCIE_SERDES0:
	case PCIE_SERDES1:
		/* PCIe SERDES has uC "chip select" in different bit, too */
		csbit = 1ULL << EPB_PCIE_UC_CS_SHF;
		trans = kr_pciesd_epb_transaction_reg;
		break;

	default:
		return -1;
	}

	FUNC3(&dd->cspec->sdepb_lock, flags);

	owned = FUNC0(dd, sdnum, 1);
	if (owned < 0) {
		FUNC4(&dd->cspec->sdepb_lock, flags);
		return -1;
	}

	/*
	 * In future code, we may need to distinguish several address ranges,
	 * and select various memories based on this. For now, just trim
	 * "loc" (location including address and memory select) to
	 * "addr" (address within memory). we will only support PRAM
	 * The memory is 8KB.
	 */
	addr = loc & 0x1FFF;
	for (tries = EPB_TRANS_TRIES; tries; --tries) {
		transval = FUNC2(dd, trans);
		if (transval & EPB_TRANS_RDY)
			break;
		FUNC5(5);
	}

	sofar = 0;
	if (tries > 0) {
		/*
		 * Every "memory" access is doubly-indirect.
		 * We set two bytes of address, then read/write
		 * one or mores bytes of data.
		 */

		/* First, we set control to "Read" or "Write" */
		transval = csbit | EPB_UC_CTL |
			(rd_notwr ? EPB_ROM_R : EPB_ROM_W);
		tries = FUNC1(dd, trans, transval, &transval);
		while (tries > 0 && sofar < cnt) {
			if (!sofar) {
				/* Only set address at start of chunk */
				int addrbyte = (addr + sofar) >> 8;

				transval = csbit | EPB_MADDRH | addrbyte;
				tries = FUNC1(dd, trans, transval,
						  &transval);
				if (tries <= 0)
					break;
				addrbyte = (addr + sofar) & 0xFF;
				transval = csbit | EPB_MADDRL | addrbyte;
				tries = FUNC1(dd, trans, transval,
						 &transval);
				if (tries <= 0)
					break;
			}

			if (rd_notwr)
				transval = csbit | EPB_ROMDATA | EPB_RD;
			else
				transval = csbit | EPB_ROMDATA | buf[sofar];
			tries = FUNC1(dd, trans, transval, &transval);
			if (tries <= 0)
				break;
			if (rd_notwr)
				buf[sofar] = transval & EPB_DATA_MASK;
			++sofar;
		}
		/* Finally, clear control-bit for Read or Write */
		transval = csbit | EPB_UC_CTL;
		tries = FUNC1(dd, trans, transval, &transval);
	}

	ret = sofar;
	/* Release bus. Failure is an error */
	if (FUNC0(dd, sdnum, -1) < 0)
		ret = -1;

	FUNC4(&dd->cspec->sdepb_lock, flags);
	if (tries <= 0)
		ret = -1;
	return ret;
}