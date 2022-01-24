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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kfd_dev*) ; 

void FUNC4(struct kfd_dev *kfd)
{
	if (!kfd->device_info->needs_iommu_device)
		return;

	FUNC3(kfd);

	FUNC2(kfd->pdev, NULL);
	FUNC1(kfd->pdev, NULL);
	FUNC0(kfd->pdev);
}