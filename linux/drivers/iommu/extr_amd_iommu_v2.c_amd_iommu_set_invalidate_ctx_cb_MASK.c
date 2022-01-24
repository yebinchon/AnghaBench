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
struct pci_dev {int dummy; } ;
struct device_state {int /*<<< orphan*/  inv_ctx_cb; } ;
typedef  int /*<<< orphan*/  amd_iommu_invalidate_ctx ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct device_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  state_lock ; 

int FUNC5(struct pci_dev *pdev,
				    amd_iommu_invalidate_ctx cb)
{
	struct device_state *dev_state;
	unsigned long flags;
	u16 devid;
	int ret;

	if (!FUNC1())
		return -ENODEV;

	devid = FUNC2(pdev);

	FUNC3(&state_lock, flags);

	ret = -EINVAL;
	dev_state = FUNC0(devid);
	if (dev_state == NULL)
		goto out_unlock;

	dev_state->inv_ctx_cb = cb;

	ret = 0;

out_unlock:
	FUNC4(&state_lock, flags);

	return ret;
}