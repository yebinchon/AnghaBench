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
typedef  int /*<<< orphan*/  u32 ;
struct skx_pvt {struct skx_imc* imc; } ;
struct skx_imc {int /*<<< orphan*/  mc; int /*<<< orphan*/  mbase; } ;
struct mem_ctl_info {int /*<<< orphan*/  n_layers; int /*<<< orphan*/  dimms; int /*<<< orphan*/  layers; struct skx_pvt* pvt_info; } ;
struct dimm_info {int dummy; } ;

/* Variables and functions */
 struct dimm_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDAC_MOD_STR ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct skx_imc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct skx_imc*,int,int) ; 
 int I10NM_NUM_CHANNELS ; 
 int I10NM_NUM_DIMMS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct skx_imc*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dimm_info*,struct skx_imc*,int,int) ; 
 scalar_t__ FUNC9 (struct dimm_info*,struct skx_imc*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct mem_ctl_info *mci)
{
	struct skx_pvt *pvt = mci->pvt_info;
	struct skx_imc *imc = pvt->imc;
	struct dimm_info *dimm;
	u32 mtr, mcddrtcfg;
	int i, j, ndimms;

	for (i = 0; i < I10NM_NUM_CHANNELS; i++) {
		if (!imc->mbase)
			continue;

		ndimms = 0;
		for (j = 0; j < I10NM_NUM_DIMMS; j++) {
			dimm = FUNC0(mci->layers, mci->dimms,
					     mci->n_layers, i, j, 0);
			mtr = FUNC1(imc, i, j);
			mcddrtcfg = FUNC2(imc, i, j);
			FUNC5(1, "dimmmtr 0x%x mcddrtcfg 0x%x (mc%d ch%d dimm%d)\n",
				 mtr, mcddrtcfg, imc->mc, i, j);

			if (FUNC3(mtr))
				ndimms += FUNC8(mtr, 0, dimm,
							    imc, i, j);
			else if (FUNC4(mcddrtcfg, j))
				ndimms += FUNC9(dimm, imc, i, j,
							      EDAC_MOD_STR);
		}
		if (ndimms && !FUNC6(imc, i)) {
			FUNC7(KERN_ERR, "ECC is disabled on imc %d channel %d\n",
				     imc->mc, i);
			return -ENODEV;
		}
	}

	return 0;
}