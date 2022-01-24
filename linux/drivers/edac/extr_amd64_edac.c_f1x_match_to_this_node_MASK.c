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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct amd64_pvt {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amd64_pvt*) ; 
 scalar_t__ FUNC3 (struct amd64_pvt*) ; 
 scalar_t__ FUNC4 (struct amd64_pvt*) ; 
 int FUNC5 (struct amd64_pvt*) ; 
 int FUNC6 (struct amd64_pvt*) ; 
 int FUNC7 (struct amd64_pvt*) ; 
 scalar_t__ FUNC8 (struct amd64_pvt*) ; 
 int FUNC9 (struct amd64_pvt*,unsigned int) ; 
 int FUNC10 (struct amd64_pvt*,unsigned int) ; 
 int FUNC11 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int,...) ; 
 int FUNC13 (struct amd64_pvt*,int,int,int) ; 
 int FUNC14 (struct amd64_pvt*,unsigned int,int,int,int) ; 
 int FUNC15 (int,int,int) ; 
 int FUNC16 (struct amd64_pvt*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct amd64_pvt*,unsigned int) ; 
 int FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct amd64_pvt *pvt, unsigned range,
				  u64 sys_addr, int *chan_sel)
{
	int cs_found = -EINVAL;
	u64 chan_addr;
	u32 dct_sel_base;
	u8 channel;
	bool high_range = false;

	u8 node_id    = FUNC9(pvt, range);
	u8 intlv_en   = FUNC10(pvt, range);
	u32 intlv_sel = FUNC11(pvt, range);

	FUNC12(1, "(range %d) SystemAddr= 0x%llx Limit=0x%llx\n",
		 range, sys_addr, FUNC17(pvt, range));

	if (FUNC8(pvt) &&
	    FUNC7(pvt) <= sys_addr &&
	    sys_addr < FUNC0(32)) {
		FUNC1("Huh? Address is in the MMIO hole: 0x%016llx\n",
			    sys_addr);
		return -EINVAL;
	}

	if (intlv_en && (intlv_sel != ((sys_addr >> 12) & intlv_en)))
		return -EINVAL;

	sys_addr = FUNC16(pvt, sys_addr);

	dct_sel_base = FUNC5(pvt);

	/*
	 * check whether addresses >= DctSelBaseAddr[47:27] are to be used to
	 * select between DCT0 and DCT1.
	 */
	if (FUNC3(pvt) &&
	   !FUNC2(pvt) &&
	   ((sys_addr >> 27) >= (dct_sel_base >> 11)))
		high_range = true;

	channel = FUNC13(pvt, sys_addr, high_range, intlv_en);

	chan_addr = FUNC14(pvt, range, sys_addr,
					  high_range, dct_sel_base);

	/* Remove node interleaving, see F1x120 */
	if (intlv_en)
		chan_addr = ((chan_addr >> (12 + FUNC18(intlv_en))) << 12) |
			    (chan_addr & 0xfff);

	/* remove channel interleave */
	if (FUNC4(pvt) &&
	   !FUNC3(pvt) &&
	   !FUNC2(pvt)) {

		if (FUNC6(pvt) != 1) {
			if (FUNC6(pvt) == 0x3)
				/* hash 9 */
				chan_addr = ((chan_addr >> 10) << 9) |
					     (chan_addr & 0x1ff);
			else
				/* A[6] or hash 6 */
				chan_addr = ((chan_addr >> 7) << 6) |
					     (chan_addr & 0x3f);
		} else
			/* A[12] */
			chan_addr = ((chan_addr >> 13) << 12) |
				     (chan_addr & 0xfff);
	}

	FUNC12(1, "   Normalized DCT addr: 0x%llx\n", chan_addr);

	cs_found = FUNC15(chan_addr, node_id, channel);

	if (cs_found >= 0)
		*chan_sel = channel;

	return cs_found;
}