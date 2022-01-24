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
struct virtio_device {int /*<<< orphan*/  dev; TYPE_1__* config; struct viommu_dev* priv; } ;
struct viommu_dev {int /*<<< orphan*/  iommu; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* del_vqs ) (struct virtio_device*) ;int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC5(struct virtio_device *vdev)
{
	struct viommu_dev *viommu = vdev->priv;

	FUNC1(&viommu->iommu);
	FUNC2(&viommu->iommu);

	/* Stop all virtqueues */
	vdev->config->reset(vdev);
	vdev->config->del_vqs(vdev);

	FUNC0(&vdev->dev, "device removed\n");
}