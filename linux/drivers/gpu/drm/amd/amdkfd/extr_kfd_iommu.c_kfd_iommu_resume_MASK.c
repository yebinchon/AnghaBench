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
struct kfd_dev {int /*<<< orphan*/  pdev; TYPE_1__* device_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  needs_iommu_device; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * iommu_invalid_ppr_cb ; 
 int /*<<< orphan*/ * iommu_pasid_shutdown_callback ; 
 int FUNC4 (struct kfd_dev*) ; 
 unsigned int FUNC5 () ; 

int FUNC6(struct kfd_dev *kfd)
{
	unsigned int pasid_limit;
	int err;

	if (!kfd->device_info->needs_iommu_device)
		return 0;

	pasid_limit = FUNC5();

	err = FUNC1(kfd->pdev, pasid_limit);
	if (err)
		return -ENXIO;

	FUNC3(kfd->pdev,
					iommu_pasid_shutdown_callback);
	FUNC2(kfd->pdev,
				     iommu_invalid_ppr_cb);

	err = FUNC4(kfd);
	if (err) {
		FUNC3(kfd->pdev, NULL);
		FUNC2(kfd->pdev, NULL);
		FUNC0(kfd->pdev);
		return err;
	}

	return 0;
}