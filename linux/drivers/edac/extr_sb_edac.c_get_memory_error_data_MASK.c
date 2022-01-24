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
typedef  int u8 ;
typedef  long long u64 ;
typedef  int u32 ;
struct TYPE_4__ {int max_sad; long long (* sad_limit ) (int) ;int (* interleave_mode ) (int) ;scalar_t__ type; long long (* rir_limit ) (int) ;int /*<<< orphan*/  interleave_pkg; int /*<<< orphan*/ * interleave_list; int /*<<< orphan*/  (* dram_attr ) (int) ;int /*<<< orphan*/ * dram_rule; } ;
struct sbridge_pvt {scalar_t__ mirror_mode; int is_cur_addr_mirrored; TYPE_2__ info; struct pci_dev** pci_tad; scalar_t__ is_close_pg; scalar_t__ is_lockstep; scalar_t__ is_chan_hash; struct pci_dev* pci_ha; TYPE_1__* sbridge_dev; struct pci_dev* pci_sad0; scalar_t__ tohm; scalar_t__ tolm; } ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ ADDR_RANGE_MIRRORING ; 
 scalar_t__ BROADWELL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 scalar_t__ FULL_MIRRORING ; 
 int FUNC2 (int,int,int) ; 
 scalar_t__ HASWELL ; 
 int /*<<< orphan*/  HASWELL_HASYSDEFEATURE2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int MAX_INTERLEAVE ; 
 int MAX_RIR_RANGES ; 
 int MAX_TAD ; 
 int FUNC4 (scalar_t__,int) ; 
 int FUNC5 (int) ; 
 scalar_t__ SANDY_BRIDGE ; 
 int FUNC6 (int) ; 
 long long FUNC7 (int) ; 
 long long FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (long long,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int,long long,...) ; 
 struct mem_ctl_info* FUNC16 (int,int) ; 
 int FUNC17 (int,long long) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ ** rir_offset ; 
 int /*<<< orphan*/ * rir_way_limit ; 
 int FUNC19 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 char* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,...) ; 
 long long FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int FUNC26 (int) ; 
 long long FUNC27 (int) ; 
 int /*<<< orphan*/ * tad_ch_nilv_offset ; 
 int /*<<< orphan*/ * tad_dram_rule ; 

__attribute__((used)) static int FUNC28(struct mem_ctl_info *mci,
				 u64 addr,
				 u8 *socket, u8 *ha,
				 long *channel_mask,
				 u8 *rank,
				 char **area_type, char *msg)
{
	struct mem_ctl_info	*new_mci;
	struct sbridge_pvt *pvt = mci->pvt_info;
	struct pci_dev		*pci_ha;
	int			n_rir, n_sads, n_tads, sad_way, sck_xch;
	int			sad_interl, idx, base_ch;
	int			interleave_mode, shiftup = 0;
	unsigned int		sad_interleave[MAX_INTERLEAVE];
	u32			reg, dram_rule;
	u8			ch_way, sck_way, pkg, sad_ha = 0;
	u32			tad_offset;
	u32			rir_way;
	u32			mb, gb;
	u64			ch_addr, offset, limit = 0, prv = 0;


	/*
	 * Step 0) Check if the address is at special memory ranges
	 * The check bellow is probably enough to fill all cases where
	 * the error is not inside a memory, except for the legacy
	 * range (e. g. VGA addresses). It is unlikely, however, that the
	 * memory controller would generate an error on that range.
	 */
	if ((addr > (u64) pvt->tolm) && (addr < (1LL << 32))) {
		FUNC23(msg, "Error at TOLM area, on addr 0x%08Lx", addr);
		return -EINVAL;
	}
	if (addr >= (u64)pvt->tohm) {
		FUNC23(msg, "Error at MMIOH area, on addr 0x%016Lx", addr);
		return -EINVAL;
	}

	/*
	 * Step 1) Get socket
	 */
	for (n_sads = 0; n_sads < pvt->info.max_sad; n_sads++) {
		FUNC18(pvt->pci_sad0, pvt->info.dram_rule[n_sads],
				      &reg);

		if (!FUNC1(reg))
			continue;

		limit = pvt->info.sad_limit(reg);
		if (limit <= prv) {
			FUNC23(msg, "Can't discover the memory socket");
			return -EINVAL;
		}
		if  (addr <= limit)
			break;
		prv = limit;
	}
	if (n_sads == pvt->info.max_sad) {
		FUNC23(msg, "Can't discover the memory socket");
		return -EINVAL;
	}
	dram_rule = reg;
	*area_type = FUNC22(pvt->info.dram_attr(dram_rule));
	interleave_mode = pvt->info.interleave_mode(dram_rule);

	FUNC18(pvt->pci_sad0, pvt->info.interleave_list[n_sads],
			      &reg);

	if (pvt->info.type == SANDY_BRIDGE) {
		sad_interl = FUNC19(pvt->info.interleave_pkg, reg, 0);
		for (sad_way = 0; sad_way < 8; sad_way++) {
			u32 pkg = FUNC19(pvt->info.interleave_pkg, reg, sad_way);
			if (sad_way > 0 && sad_interl == pkg)
				break;
			sad_interleave[sad_way] = pkg;
			FUNC15(0, "SAD interleave #%d: %d\n",
				 sad_way, sad_interleave[sad_way]);
		}
		FUNC15(0, "mc#%d: Error detected on SAD#%d: address 0x%016Lx < 0x%016Lx, Interleave [%d:6]%s\n",
			 pvt->sbridge_dev->mc,
			 n_sads,
			 addr,
			 limit,
			 sad_way + 7,
			 !interleave_mode ? "" : "XOR[18:16]");
		if (interleave_mode)
			idx = ((addr >> 6) ^ (addr >> 16)) & 7;
		else
			idx = (addr >> 6) & 7;
		switch (sad_way) {
		case 1:
			idx = 0;
			break;
		case 2:
			idx = idx & 1;
			break;
		case 4:
			idx = idx & 3;
			break;
		case 8:
			break;
		default:
			FUNC23(msg, "Can't discover socket interleave");
			return -EINVAL;
		}
		*socket = sad_interleave[idx];
		FUNC15(0, "SAD interleave index: %d (wayness %d) = CPU socket %d\n",
			 idx, sad_way, *socket);
	} else if (pvt->info.type == HASWELL || pvt->info.type == BROADWELL) {
		int bits, a7mode = FUNC0(dram_rule);

		if (a7mode) {
			/* A7 mode swaps P9 with P6 */
			bits = FUNC2(addr, 7, 8) << 1;
			bits |= FUNC2(addr, 9, 9);
		} else
			bits = FUNC2(addr, 6, 8);

		if (interleave_mode == 0) {
			/* interleave mode will XOR {8,7,6} with {18,17,16} */
			idx = FUNC2(addr, 16, 18);
			idx ^= bits;
		} else
			idx = bits;

		pkg = FUNC19(pvt->info.interleave_pkg, reg, idx);
		*socket = FUNC21(pkg);
		sad_ha = FUNC20(pkg);

		if (a7mode) {
			/* MCChanShiftUpEnable */
			FUNC18(pvt->pci_ha, HASWELL_HASYSDEFEATURE2, &reg);
			shiftup = FUNC2(reg, 22, 22);
		}

		FUNC15(0, "SAD interleave package: %d = CPU socket %d, HA %i, shiftup: %i\n",
			 idx, *socket, sad_ha, shiftup);
	} else {
		/* Ivy Bridge's SAD mode doesn't support XOR interleave mode */
		idx = (addr >> 6) & 7;
		pkg = FUNC19(pvt->info.interleave_pkg, reg, idx);
		*socket = FUNC21(pkg);
		sad_ha = FUNC20(pkg);
		FUNC15(0, "SAD interleave package: %d = CPU socket %d, HA %d\n",
			 idx, *socket, sad_ha);
	}

	*ha = sad_ha;

	/*
	 * Move to the proper node structure, in order to access the
	 * right PCI registers
	 */
	new_mci = FUNC16(*socket, sad_ha);
	if (!new_mci) {
		FUNC23(msg, "Struct for socket #%u wasn't initialized",
			*socket);
		return -EINVAL;
	}
	mci = new_mci;
	pvt = mci->pvt_info;

	/*
	 * Step 2) Get memory channel
	 */
	prv = 0;
	pci_ha = pvt->pci_ha;
	for (n_tads = 0; n_tads < MAX_TAD; n_tads++) {
		FUNC18(pci_ha, tad_dram_rule[n_tads], &reg);
		limit = FUNC7(reg);
		if (limit <= prv) {
			FUNC23(msg, "Can't discover the memory channel");
			return -EINVAL;
		}
		if  (addr <= limit)
			break;
		prv = limit;
	}
	if (n_tads == MAX_TAD) {
		FUNC23(msg, "Can't discover the memory channel");
		return -EINVAL;
	}

	ch_way = FUNC6(reg) + 1;
	sck_way = FUNC9(reg);

	if (ch_way == 3)
		idx = addr >> 6;
	else {
		idx = (addr >> (6 + sck_way + shiftup)) & 0x3;
		if (pvt->is_chan_hash)
			idx = FUNC17(idx, addr);
	}
	idx = idx % ch_way;

	/*
	 * FIXME: Shouldn't we use CHN_IDX_OFFSET() here, when ch_way == 3 ???
	 */
	switch (idx) {
	case 0:
		base_ch = FUNC10(reg);
		break;
	case 1:
		base_ch = FUNC11(reg);
		break;
	case 2:
		base_ch = FUNC12(reg);
		break;
	case 3:
		base_ch = FUNC13(reg);
		break;
	default:
		FUNC23(msg, "Can't discover the TAD target");
		return -EINVAL;
	}
	*channel_mask = 1 << base_ch;

	FUNC18(pvt->pci_tad[base_ch], tad_ch_nilv_offset[n_tads], &tad_offset);

	if (pvt->mirror_mode == FULL_MIRRORING ||
	    (pvt->mirror_mode == ADDR_RANGE_MIRRORING && n_tads == 0)) {
		*channel_mask |= 1 << ((base_ch + 2) % 4);
		switch(ch_way) {
		case 2:
		case 4:
			sck_xch = (1 << sck_way) * (ch_way >> 1);
			break;
		default:
			FUNC23(msg, "Invalid mirror set. Can't decode addr");
			return -EINVAL;
		}

		pvt->is_cur_addr_mirrored = true;
	} else {
		sck_xch = (1 << sck_way) * ch_way;
		pvt->is_cur_addr_mirrored = false;
	}

	if (pvt->is_lockstep)
		*channel_mask |= 1 << ((base_ch + 1) % 4);

	offset = FUNC8(tad_offset);

	FUNC15(0, "TAD#%d: address 0x%016Lx < 0x%016Lx, socket interleave %d, channel interleave %d (offset 0x%08Lx), index %d, base ch: %d, ch mask: 0x%02lx\n",
		 n_tads,
		 addr,
		 limit,
		 sck_way,
		 ch_way,
		 offset,
		 idx,
		 base_ch,
		 *channel_mask);

	/* Calculate channel address */
	/* Remove the TAD offset */

	if (offset > addr) {
		FUNC23(msg, "Can't calculate ch addr: TAD offset 0x%08Lx is too high for addr 0x%08Lx!",
			offset, addr);
		return -EINVAL;
	}

	ch_addr = addr - offset;
	ch_addr >>= (6 + shiftup);
	ch_addr /= sck_xch;
	ch_addr <<= (6 + shiftup);
	ch_addr |= addr & ((1 << (6 + shiftup)) - 1);

	/*
	 * Step 3) Decode rank
	 */
	for (n_rir = 0; n_rir < MAX_RIR_RANGES; n_rir++) {
		FUNC18(pvt->pci_tad[base_ch], rir_way_limit[n_rir], &reg);

		if (!FUNC3(reg))
			continue;

		limit = pvt->info.rir_limit(reg);
		gb = FUNC14(limit >> 20, 1024, &mb);
		FUNC15(0, "RIR#%d, limit: %u.%03u GB (0x%016Lx), way: %d\n",
			 n_rir,
			 gb, (mb*1000)/1024,
			 limit,
			 1 << FUNC5(reg));
		if  (ch_addr <= limit)
			break;
	}
	if (n_rir == MAX_RIR_RANGES) {
		FUNC23(msg, "Can't discover the memory rank for ch addr 0x%08Lx",
			ch_addr);
		return -EINVAL;
	}
	rir_way = FUNC5(reg);

	if (pvt->is_close_pg)
		idx = (ch_addr >> 6);
	else
		idx = (ch_addr >> 13);	/* FIXME: Datasheet says to shift by 15 */
	idx %= 1 << rir_way;

	FUNC18(pvt->pci_tad[base_ch], rir_offset[n_rir][idx], &reg);
	*rank = FUNC4(pvt->info.type, reg);

	FUNC15(0, "RIR#%d: channel address 0x%08Lx < 0x%08Lx, RIR interleave %d, index %d\n",
		 n_rir,
		 ch_addr,
		 limit,
		 rir_way,
		 idx);

	return 0;
}