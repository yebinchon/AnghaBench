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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u64 ;
typedef  int u32 ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int AHB_ADDR_LSB ; 
 int AHB_DATA_LSB ; 
 int AHB_TRANS_RDY ; 
 int AHB_TRANS_TRIES ; 
 int AHB_WR ; 
 int /*<<< orphan*/  KR_AHB_ACC ; 
 int /*<<< orphan*/  KR_AHB_TRANS ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,char*,int) ; 
 int FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC3(struct qib_devdata *dd, int quad, int chan, int addr,
		    u32 data, u32 mask)
{
	u32 rd_data, wr_data, sz_mask;
	u64 trans, acc, prev_acc;
	u32 ret = 0xBAD0BAD;
	int tries;

	prev_acc = FUNC1(dd, KR_AHB_ACC);
	/* From this point on, make sure we return access */
	acc = (quad << 1) | 1;
	FUNC2(dd, KR_AHB_ACC, acc);

	for (tries = 1; tries < AHB_TRANS_TRIES; ++tries) {
		trans = FUNC1(dd, KR_AHB_TRANS);
		if (trans & AHB_TRANS_RDY)
			break;
	}
	if (tries >= AHB_TRANS_TRIES) {
		FUNC0(dd, "No ahb_rdy in %d tries\n", AHB_TRANS_TRIES);
		goto bail;
	}

	/* If mask is not all 1s, we need to read, but different SerDes
	 * entities have different sizes
	 */
	sz_mask = (1UL << ((quad == 1) ? 32 : 16)) - 1;
	wr_data = data & mask & sz_mask;
	if ((~mask & sz_mask) != 0) {
		trans = ((chan << 6) | addr) << (AHB_ADDR_LSB + 1);
		FUNC2(dd, KR_AHB_TRANS, trans);

		for (tries = 1; tries < AHB_TRANS_TRIES; ++tries) {
			trans = FUNC1(dd, KR_AHB_TRANS);
			if (trans & AHB_TRANS_RDY)
				break;
		}
		if (tries >= AHB_TRANS_TRIES) {
			FUNC0(dd, "No Rd ahb_rdy in %d tries\n",
				    AHB_TRANS_TRIES);
			goto bail;
		}
		/* Re-read in case host split reads and read data first */
		trans = FUNC1(dd, KR_AHB_TRANS);
		rd_data = (uint32_t)(trans >> AHB_DATA_LSB);
		wr_data |= (rd_data & ~mask & sz_mask);
	}

	/* If mask is not zero, we need to write. */
	if (mask & sz_mask) {
		trans = ((chan << 6) | addr) << (AHB_ADDR_LSB + 1);
		trans |= ((uint64_t)wr_data << AHB_DATA_LSB);
		trans |= AHB_WR;
		FUNC2(dd, KR_AHB_TRANS, trans);

		for (tries = 1; tries < AHB_TRANS_TRIES; ++tries) {
			trans = FUNC1(dd, KR_AHB_TRANS);
			if (trans & AHB_TRANS_RDY)
				break;
		}
		if (tries >= AHB_TRANS_TRIES) {
			FUNC0(dd, "No Wr ahb_rdy in %d tries\n",
				    AHB_TRANS_TRIES);
			goto bail;
		}
	}
	ret = wr_data;
bail:
	FUNC2(dd, KR_AHB_ACC, prev_acc);
	return ret;
}