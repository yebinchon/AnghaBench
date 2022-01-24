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
typedef  size_t u32 ;
struct llcc_edac_reg_data {int reg_cnt; size_t synd_reg; size_t count_status_reg; int count_mask; int count_shift; size_t ways_status_reg; int ways_mask; int ways_shift; int /*<<< orphan*/  name; } ;
struct llcc_drv_data {size_t* offsets; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_LLCC ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 struct llcc_edac_reg_data* edac_reg_data ; 
 int FUNC1 (int,struct llcc_drv_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,...) ; 

__attribute__((used)) static int
FUNC3(struct llcc_drv_data *drv, u32 bank, int err_type)
{
	struct llcc_edac_reg_data reg_data = edac_reg_data[err_type];
	int err_cnt, err_ways, ret, i;
	u32 synd_reg, synd_val;

	for (i = 0; i < reg_data.reg_cnt; i++) {
		synd_reg = reg_data.synd_reg + (i * 4);
		ret = FUNC2(drv->regmap, drv->offsets[bank] + synd_reg,
				  &synd_val);
		if (ret)
			goto clear;

		FUNC0(KERN_CRIT, EDAC_LLCC, "%s: ECC_SYN%d: 0x%8x\n",
			    reg_data.name, i, synd_val);
	}

	ret = FUNC2(drv->regmap,
			  drv->offsets[bank] + reg_data.count_status_reg,
			  &err_cnt);
	if (ret)
		goto clear;

	err_cnt &= reg_data.count_mask;
	err_cnt >>= reg_data.count_shift;
	FUNC0(KERN_CRIT, EDAC_LLCC, "%s: Error count: 0x%4x\n",
		    reg_data.name, err_cnt);

	ret = FUNC2(drv->regmap,
			  drv->offsets[bank] + reg_data.ways_status_reg,
			  &err_ways);
	if (ret)
		goto clear;

	err_ways &= reg_data.ways_mask;
	err_ways >>= reg_data.ways_shift;

	FUNC0(KERN_CRIT, EDAC_LLCC, "%s: Error ways: 0x%4x\n",
		    reg_data.name, err_ways);

clear:
	return FUNC1(err_type, drv);
}