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
typedef  int /*<<< orphan*/  u32 ;
struct of_phandle_iterator {int cur_count; int /*<<< orphan*/ * cur; struct device_node* node; } ;
struct device_node {int dummy; } ;
struct device {TYPE_1__* of_node; } ;
struct arm_smmu_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  __arm_smmu_get_pci_sid ; 
 int /*<<< orphan*/  __find_legacy_master_phandle ; 
 TYPE_2__ arm_smmu_driver ; 
 int /*<<< orphan*/  arm_smmu_ops ; 
 struct device_node* FUNC0 (struct device*) ; 
 struct arm_smmu_device* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct of_phandle_iterator*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct device *dev,
					   struct arm_smmu_device **smmu)
{
	struct device *smmu_dev;
	struct device_node *np;
	struct of_phandle_iterator it;
	void *data = &it;
	u32 *sids;
	__be32 pci_sid;
	int err;

	np = FUNC0(dev);
	if (!np || !FUNC8(np, "#stream-id-cells", NULL)) {
		FUNC9(np);
		return -ENODEV;
	}

	it.node = np;
	err = FUNC3(&arm_smmu_driver.driver, NULL, &data,
				     __find_legacy_master_phandle);
	smmu_dev = data;
	FUNC9(np);
	if (err == 0)
		return -ENODEV;
	if (err < 0)
		return err;

	if (FUNC2(dev)) {
		/* "mmu-masters" assumes Stream ID == Requester ID */
		FUNC11(FUNC12(dev), __arm_smmu_get_pci_sid,
				       &pci_sid);
		it.cur = &pci_sid;
		it.cur_count = 1;
	}

	err = FUNC5(dev, &smmu_dev->of_node->fwnode,
				&arm_smmu_ops);
	if (err)
		return err;

	sids = FUNC6(it.cur_count, sizeof(*sids), GFP_KERNEL);
	if (!sids)
		return -ENOMEM;

	*smmu = FUNC1(smmu_dev);
	FUNC10(&it, sids, it.cur_count);
	err = FUNC4(dev, sids, it.cur_count);
	FUNC7(sids);
	return err;
}