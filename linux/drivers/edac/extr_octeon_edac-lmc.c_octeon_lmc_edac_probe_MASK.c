#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ intr_sec_ena; scalar_t__ intr_ded_ena; int /*<<< orphan*/  ecc_ena; } ;
union cvmx_lmcx_mem_cfg0 {void* u64; TYPE_1__ s; } ;
struct TYPE_6__ {scalar_t__ intr_sec_ena; scalar_t__ intr_ded_ena; } ;
union cvmx_lmcx_int_en {void* u64; TYPE_3__ s; } ;
struct TYPE_5__ {int /*<<< orphan*/  ecc_ena; } ;
union cvmx_lmcx_config {TYPE_2__ s; void* u64; } ;
struct platform_device {int id; int /*<<< orphan*/  dev; } ;
struct octeon_lmc_pvt {int dummy; } ;
struct mem_ctl_info {char* mod_name; char* ctl_name; int /*<<< orphan*/  edac_check; void* dev_name; int /*<<< orphan*/ * pdev; } ;
struct edac_mc_layer {int size; int is_virt_csrow; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edac_mc_layer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EDAC_MC_LAYER_CHANNEL ; 
 int ENXIO ; 
 scalar_t__ FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct mem_ctl_info*,int /*<<< orphan*/ ) ; 
 struct mem_ctl_info* FUNC10 (int,int /*<<< orphan*/ ,struct edac_mc_layer*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  octeon_dev_groups ; 
 int /*<<< orphan*/  octeon_lmc_edac_poll ; 
 int /*<<< orphan*/  octeon_lmc_edac_poll_o2 ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct mem_ctl_info*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct mem_ctl_info *mci;
	struct edac_mc_layer layers[1];
	int mc = pdev->id;

	FUNC12();

	layers[0].type = EDAC_MC_LAYER_CHANNEL;
	layers[0].size = 1;
	layers[0].is_virt_csrow = false;

	if (FUNC3()) {
		union cvmx_lmcx_mem_cfg0 cfg0;

		cfg0.u64 = FUNC4(FUNC2(0));
		if (!cfg0.s.ecc_ena) {
			FUNC7(&pdev->dev, "Disabled (ECC not enabled)\n");
			return 0;
		}

		mci = FUNC10(mc, FUNC0(layers), layers, sizeof(struct octeon_lmc_pvt));
		if (!mci)
			return -ENXIO;

		mci->pdev = &pdev->dev;
		mci->dev_name = FUNC8(&pdev->dev);

		mci->mod_name = "octeon-lmc";
		mci->ctl_name = "octeon-lmc-err";
		mci->edac_check = octeon_lmc_edac_poll;

		if (FUNC9(mci, octeon_dev_groups)) {
			FUNC6(&pdev->dev, "edac_mc_add_mc() failed\n");
			FUNC11(mci);
			return -ENXIO;
		}

		cfg0.u64 = FUNC4(FUNC2(mc));
		cfg0.s.intr_ded_ena = 0;	/* We poll */
		cfg0.s.intr_sec_ena = 0;
		FUNC5(FUNC2(mc), cfg0.u64);
	} else {
		/* OCTEON II */
		union cvmx_lmcx_int_en en;
		union cvmx_lmcx_config config;

		config.u64 = FUNC4(FUNC1(0));
		if (!config.s.ecc_ena) {
			FUNC7(&pdev->dev, "Disabled (ECC not enabled)\n");
			return 0;
		}

		mci = FUNC10(mc, FUNC0(layers), layers, sizeof(struct octeon_lmc_pvt));
		if (!mci)
			return -ENXIO;

		mci->pdev = &pdev->dev;
		mci->dev_name = FUNC8(&pdev->dev);

		mci->mod_name = "octeon-lmc";
		mci->ctl_name = "co_lmc_err";
		mci->edac_check = octeon_lmc_edac_poll_o2;

		if (FUNC9(mci, octeon_dev_groups)) {
			FUNC6(&pdev->dev, "edac_mc_add_mc() failed\n");
			FUNC11(mci);
			return -ENXIO;
		}

		en.u64 = FUNC4(FUNC2(mc));
		en.s.intr_ded_ena = 0;	/* We poll */
		en.s.intr_sec_ena = 0;
		FUNC5(FUNC2(mc), en.u64);
	}
	FUNC13(pdev, mci);

	return 0;
}