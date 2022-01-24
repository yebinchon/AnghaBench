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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mem_ctl_info {int /*<<< orphan*/  edac_cap; int /*<<< orphan*/ * pdev; struct amd64_pvt* pvt_info; } ;
struct edac_mc_layer {int size; int is_virt_csrow; int /*<<< orphan*/  type; } ;
struct amd64_umc {int dummy; } ;
struct amd64_pvt {unsigned int mc_node_id; int fam; scalar_t__ channel_count; struct amd64_pvt* umc; struct pci_dev* F3; TYPE_2__* csels; TYPE_1__* ops; } ;
struct amd64_family_type {int /*<<< orphan*/  f2_id; int /*<<< orphan*/  f1_id; int /*<<< orphan*/  f6_id; int /*<<< orphan*/  f0_id; } ;
struct TYPE_6__ {struct pci_dev* misc; } ;
struct TYPE_5__ {int b_cnt; } ;
struct TYPE_4__ {scalar_t__ (* early_channel_count ) (struct amd64_pvt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edac_mc_layer*) ; 
 int /*<<< orphan*/  EDAC_FLAG_NONE ; 
 int /*<<< orphan*/  EDAC_MC_LAYER_CHANNEL ; 
 int /*<<< orphan*/  EDAC_MC_LAYER_CHIP_SELECT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  amd64_edac_attr_groups ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (struct mem_ctl_info*,int /*<<< orphan*/ ) ; 
 struct mem_ctl_info* FUNC3 (unsigned int,int /*<<< orphan*/ ,struct edac_mc_layer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct amd64_pvt*) ; 
 scalar_t__ FUNC6 (struct mem_ctl_info*) ; 
 struct amd64_pvt* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct amd64_pvt*) ; 
 struct amd64_pvt* FUNC9 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (unsigned int) ; 
 int num_umcs ; 
 struct amd64_family_type* FUNC11 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC12 (struct amd64_pvt*) ; 
 int FUNC13 (struct amd64_pvt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mem_ctl_info*,struct amd64_family_type*) ; 
 scalar_t__ FUNC15 (struct amd64_pvt*) ; 

__attribute__((used)) static int FUNC16(unsigned int nid)
{
	struct pci_dev *F3 = FUNC10(nid)->misc;
	struct amd64_family_type *fam_type = NULL;
	struct mem_ctl_info *mci = NULL;
	struct edac_mc_layer layers[2];
	struct amd64_pvt *pvt = NULL;
	u16 pci_id1, pci_id2;
	int err = 0, ret;

	ret = -ENOMEM;
	pvt = FUNC9(sizeof(struct amd64_pvt), GFP_KERNEL);
	if (!pvt)
		goto err_ret;

	pvt->mc_node_id	= nid;
	pvt->F3 = F3;

	ret = -EINVAL;
	fam_type = FUNC11(pvt);
	if (!fam_type)
		goto err_free;

	if (pvt->fam >= 0x17) {
		pvt->umc = FUNC7(num_umcs, sizeof(struct amd64_umc), GFP_KERNEL);
		if (!pvt->umc) {
			ret = -ENOMEM;
			goto err_free;
		}

		pci_id1 = fam_type->f0_id;
		pci_id2 = fam_type->f6_id;
	} else {
		pci_id1 = fam_type->f1_id;
		pci_id2 = fam_type->f2_id;
	}

	err = FUNC13(pvt, pci_id1, pci_id2);
	if (err)
		goto err_post_init;

	FUNC12(pvt);

	/*
	 * We need to determine how many memory channels there are. Then use
	 * that information for calculating the size of the dynamic instance
	 * tables in the 'mci' structure.
	 */
	ret = -EINVAL;
	pvt->channel_count = pvt->ops->early_channel_count(pvt);
	if (pvt->channel_count < 0)
		goto err_siblings;

	ret = -ENOMEM;
	layers[0].type = EDAC_MC_LAYER_CHIP_SELECT;
	layers[0].size = pvt->csels[0].b_cnt;
	layers[0].is_virt_csrow = true;
	layers[1].type = EDAC_MC_LAYER_CHANNEL;

	/*
	 * Always allocate two channels since we can have setups with DIMMs on
	 * only one channel. Also, this simplifies handling later for the price
	 * of a couple of KBs tops.
	 *
	 * On Fam17h+, the number of controllers may be greater than two. So set
	 * the size equal to the maximum number of UMCs.
	 */
	if (pvt->fam >= 0x17)
		layers[1].size = num_umcs;
	else
		layers[1].size = 2;
	layers[1].is_virt_csrow = false;

	mci = FUNC3(nid, FUNC0(layers), layers, 0);
	if (!mci)
		goto err_siblings;

	mci->pvt_info = pvt;
	mci->pdev = &pvt->F3->dev;

	FUNC14(mci, fam_type);

	if (FUNC6(mci))
		mci->edac_cap = EDAC_FLAG_NONE;

	ret = -ENODEV;
	if (FUNC2(mci, amd64_edac_attr_groups)) {
		FUNC1(1, "failed edac_mc_add_mc()\n");
		goto err_add_mc;
	}

	return 0;

err_add_mc:
	FUNC4(mci);

err_siblings:
	FUNC5(pvt);

err_post_init:
	if (pvt->fam >= 0x17)
		FUNC8(pvt->umc);

err_free:
	FUNC8(pvt);

err_ret:
	return ret;
}