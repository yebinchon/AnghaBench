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
typedef  int /*<<< orphan*/  u32 ;
struct skx_pvt {struct skx_imc* imc; } ;
struct skx_imc {int /*<<< orphan*/  mc; TYPE_1__* chan; } ;
struct mem_ctl_info {int /*<<< orphan*/  n_layers; int /*<<< orphan*/  dimms; int /*<<< orphan*/  layers; struct skx_pvt* pvt_info; } ;
struct dimm_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 struct dimm_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDAC_MOD_STR ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int SKX_NUM_CHANNELS ; 
 int SKX_NUM_DIMMS ; 
 int /*<<< orphan*/  nvdimm_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dimm_info*,struct skx_imc*,int,int) ; 
 scalar_t__ FUNC6 (struct dimm_info*,struct skx_imc*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mem_ctl_info *mci)
{
	struct skx_pvt *pvt = mci->pvt_info;
	struct skx_imc *imc = pvt->imc;
	u32 mtr, amap, mcddrtcfg;
	struct dimm_info *dimm;
	int i, j;
	int ndimms;

	for (i = 0; i < SKX_NUM_CHANNELS; i++) {
		ndimms = 0;
		FUNC3(imc->chan[i].cdev, 0x8C, &amap);
		FUNC3(imc->chan[i].cdev, 0x400, &mcddrtcfg);
		for (j = 0; j < SKX_NUM_DIMMS; j++) {
			dimm = FUNC0(mci->layers, mci->dimms,
					     mci->n_layers, i, j, 0);
			FUNC3(imc->chan[i].cdev,
					      0x80 + 4 * j, &mtr);
			if (FUNC1(mtr)) {
				ndimms += FUNC5(mtr, amap, dimm, imc, i, j);
			} else if (FUNC2(mcddrtcfg, j)) {
				ndimms += FUNC6(dimm, imc, i, j,
							      EDAC_MOD_STR);
				nvdimm_count++;
			}
		}
		if (ndimms && !FUNC4(imc->chan[0].cdev)) {
			FUNC7(KERN_ERR, "ECC is disabled on imc %d\n", imc->mc);
			return -ENODEV;
		}
	}

	return 0;
}