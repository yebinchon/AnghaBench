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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct iommu_group {int dummy; } ;
struct device_state {int max_pasids; int /*<<< orphan*/ * states; int /*<<< orphan*/ * domain; int /*<<< orphan*/  list; int /*<<< orphan*/  count; scalar_t__ pasid_levels; int /*<<< orphan*/  devid; struct pci_dev* pdev; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PASID_MASK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct iommu_group*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct iommu_group* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_state*) ; 
 struct device_state* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  state_list ; 
 int /*<<< orphan*/  state_lock ; 

int FUNC21(struct pci_dev *pdev, int pasids)
{
	struct device_state *dev_state;
	struct iommu_group *group;
	unsigned long flags;
	int ret, tmp;
	u16 devid;

	FUNC17();

	if (!FUNC3())
		return -ENODEV;

	if (pasids <= 0 || pasids > (PASID_MASK + 1))
		return -EINVAL;

	devid = FUNC5(pdev);

	dev_state = FUNC15(sizeof(*dev_state), GFP_KERNEL);
	if (dev_state == NULL)
		return -ENOMEM;

	FUNC18(&dev_state->lock);
	FUNC8(&dev_state->wq);
	dev_state->pdev  = pdev;
	dev_state->devid = devid;

	tmp = pasids;
	for (dev_state->pasid_levels = 0; (tmp - 1) & ~0x1ff; tmp >>= 9)
		dev_state->pasid_levels += 1;

	FUNC4(&dev_state->count, 1);
	dev_state->max_pasids = pasids;

	ret = -ENOMEM;
	dev_state->states = (void *)FUNC7(GFP_KERNEL);
	if (dev_state->states == NULL)
		goto out_free_dev_state;

	dev_state->domain = FUNC10(&pci_bus_type);
	if (dev_state->domain == NULL)
		goto out_free_states;

	FUNC1(dev_state->domain);

	ret = FUNC2(dev_state->domain, pasids);
	if (ret)
		goto out_free_domain;

	group = FUNC12(&pdev->dev);
	if (!group) {
		ret = -EINVAL;
		goto out_free_domain;
	}

	ret = FUNC9(dev_state->domain, group);
	if (ret != 0)
		goto out_drop_group;

	FUNC13(group);

	FUNC19(&state_lock, flags);

	if (FUNC0(devid) != NULL) {
		FUNC20(&state_lock, flags);
		ret = -EBUSY;
		goto out_free_domain;
	}

	FUNC16(&dev_state->list, &state_list);

	FUNC20(&state_lock, flags);

	return 0;

out_drop_group:
	FUNC13(group);

out_free_domain:
	FUNC11(dev_state->domain);

out_free_states:
	FUNC6((unsigned long)dev_state->states);

out_free_dev_state:
	FUNC14(dev_state);

	return ret;
}