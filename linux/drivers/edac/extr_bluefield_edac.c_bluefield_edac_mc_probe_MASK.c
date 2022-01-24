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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mem_ctl_info {int mtype_cap; char* ctl_name; int /*<<< orphan*/  edac_check; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  mod_name; int /*<<< orphan*/  edac_ctl_cap; struct device* pdev; struct bluefield_edac_priv* pvt_info; } ;
struct edac_mc_layer {unsigned int size; int is_virt_csrow; int /*<<< orphan*/  type; } ;
struct bluefield_edac_priv {unsigned int dimm_per_mc; int /*<<< orphan*/  emi_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edac_mc_layer*) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  EDAC_FLAG_SECDED ; 
 int /*<<< orphan*/  EDAC_MC_LAYER_SLOT ; 
 int /*<<< orphan*/  EDAC_OPSTATE_POLL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MEM_FLAG_DDR4 ; 
 int MEM_FLAG_LRDDR4 ; 
 int MEM_FLAG_NVDIMM ; 
 int MEM_FLAG_RDDR4 ; 
 unsigned int MLXBF_EDAC_MAX_DIMM_PER_MC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bluefield_edac_check ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 scalar_t__ FUNC7 (struct device*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct resource*) ; 
 int FUNC9 (struct mem_ctl_info*) ; 
 struct mem_ctl_info* FUNC10 (unsigned int,int /*<<< orphan*/ ,struct edac_mc_layer*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  edac_op_state ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct mem_ctl_info*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct bluefield_edac_priv *priv;
	struct device *dev = &pdev->dev;
	struct edac_mc_layer layers[1];
	struct mem_ctl_info *mci;
	struct resource *emi_res;
	unsigned int mc_idx, dimm_count;
	int rc, ret;

	/* Read the MSS (Memory SubSystem) index from ACPI table. */
	if (FUNC7(dev, "mss_number", &mc_idx)) {
		FUNC6(dev, "bf_edac: MSS number unknown\n");
		return -EINVAL;
	}

	/* Read the DIMMs per MC from ACPI table. */
	if (FUNC7(dev, "dimm_per_mc", &dimm_count)) {
		FUNC6(dev, "bf_edac: DIMMs per MC unknown\n");
		return -EINVAL;
	}

	if (dimm_count > MLXBF_EDAC_MAX_DIMM_PER_MC) {
		FUNC6(dev, "bf_edac: DIMMs per MC not valid\n");
		return -EINVAL;
	}

	emi_res = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!emi_res)
		return -EINVAL;

	layers[0].type = EDAC_MC_LAYER_SLOT;
	layers[0].size = dimm_count;
	layers[0].is_virt_csrow = true;

	mci = FUNC10(mc_idx, FUNC0(layers), layers, sizeof(*priv));
	if (!mci)
		return -ENOMEM;

	priv = mci->pvt_info;

	priv->dimm_per_mc = dimm_count;
	priv->emi_base = FUNC8(dev, emi_res);
	if (FUNC1(priv->emi_base)) {
		FUNC4(dev, "failed to map EMI IO resource\n");
		ret = FUNC2(priv->emi_base);
		goto err;
	}

	mci->pdev = dev;
	mci->mtype_cap = MEM_FLAG_DDR4 | MEM_FLAG_RDDR4 |
			 MEM_FLAG_LRDDR4 | MEM_FLAG_NVDIMM;
	mci->edac_ctl_cap = EDAC_FLAG_SECDED;

	mci->mod_name = DRIVER_NAME;
	mci->ctl_name = "BlueField_Memory_Controller";
	mci->dev_name = FUNC5(dev);
	mci->edac_check = bluefield_edac_check;

	/* Initialize mci with the actual populated DIMM information. */
	FUNC3(mci);

	FUNC13(pdev, mci);

	/* Register with EDAC core */
	rc = FUNC9(mci);
	if (rc) {
		FUNC4(dev, "failed to register with EDAC core\n");
		ret = rc;
		goto err;
	}

	/* Only POLL mode supported so far. */
	edac_op_state = EDAC_OPSTATE_POLL;

	return 0;

err:
	FUNC11(mci);

	return ret;

}