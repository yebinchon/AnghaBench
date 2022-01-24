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
typedef  int uint32_t ;
struct mem_ctl_info {struct dimm_info** dimms; struct axp_mc_drvdata* pvt_info; } ;
struct dimm_info {int nr_pages; int grain; int /*<<< orphan*/  edac_mode; int /*<<< orphan*/  mtype; int /*<<< orphan*/  dtype; } ;
struct axp_mc_drvdata {int width; int* cs_addr_sel; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_X16 ; 
 int /*<<< orphan*/  DEV_X8 ; 
 int /*<<< orphan*/  EDAC_SECDED ; 
 int /*<<< orphan*/  MEM_DDR3 ; 
 int /*<<< orphan*/  MEM_RDDR3 ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ SDRAM_ADDR_CTRL_REG ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int SDRAM_CONFIG_BUS_WIDTH_MASK ; 
 scalar_t__ SDRAM_CONFIG_REG ; 
 int SDRAM_CONFIG_REGISTERED_MASK ; 
 unsigned int SDRAM_NUM_CS ; 
 int FUNC7 (unsigned int) ; 
 scalar_t__ SDRAM_RANK_CTRL_REG ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct mem_ctl_info *mci)
{
	struct axp_mc_drvdata *drvdata = mci->pvt_info;
	uint32_t config, addr_ctrl, rank_ctrl;
	unsigned int i, cs_struct, cs_size;
	struct dimm_info *dimm;

	config = FUNC8(drvdata->base + SDRAM_CONFIG_REG);
	if (config & SDRAM_CONFIG_BUS_WIDTH_MASK)
		/* 64 bit */
		drvdata->width = 8;
	else
		/* 32 bit */
		drvdata->width = 4;

	addr_ctrl = FUNC8(drvdata->base + SDRAM_ADDR_CTRL_REG);
	rank_ctrl = FUNC8(drvdata->base + SDRAM_RANK_CTRL_REG);
	for (i = 0; i < SDRAM_NUM_CS; i++) {
		dimm = mci->dimms[i];

		if (!(rank_ctrl & FUNC7(i)))
			continue;

		drvdata->cs_addr_sel[i] =
			!!(addr_ctrl & FUNC0(i));

		cs_struct = (addr_ctrl & FUNC5(i)) >> FUNC6(i);
		cs_size   = ((addr_ctrl & FUNC1(i)) >> (FUNC2(i) - 2) |
			    ((addr_ctrl & FUNC3(i)) >> FUNC4(i)));

		switch (cs_size) {
		case 0: /* 2GBit */
			dimm->nr_pages = 524288;
			break;
		case 1: /* 256MBit */
			dimm->nr_pages = 65536;
			break;
		case 2: /* 512MBit */
			dimm->nr_pages = 131072;
			break;
		case 3: /* 1GBit */
			dimm->nr_pages = 262144;
			break;
		case 4: /* 4GBit */
			dimm->nr_pages = 1048576;
			break;
		case 5: /* 8GBit */
			dimm->nr_pages = 2097152;
			break;
		}
		dimm->grain = 8;
		dimm->dtype = cs_struct ? DEV_X16 : DEV_X8;
		dimm->mtype = (config & SDRAM_CONFIG_REGISTERED_MASK) ?
			MEM_RDDR3 : MEM_DDR3;
		dimm->edac_mode = EDAC_SECDED;
	}
}