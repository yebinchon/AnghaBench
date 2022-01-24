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
struct viommu_endpoint {int /*<<< orphan*/  resv_regions; struct viommu_dev* viommu; struct device* dev; } ;
struct viommu_dev {int /*<<< orphan*/  iommu; scalar_t__ probe_size; } ;
struct iommu_group {int dummy; } ;
struct iommu_fwspec {struct viommu_endpoint* iommu_priv; int /*<<< orphan*/  iommu_fwnode; int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct iommu_group*) ; 
 int FUNC2 (struct iommu_group*) ; 
 int FUNC3 (struct iommu_group*) ; 
 struct iommu_fwspec* FUNC4 (struct device*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC9 (struct viommu_endpoint*) ; 
 struct viommu_endpoint* FUNC10 (int,int /*<<< orphan*/ ) ; 
 struct viommu_dev* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  viommu_ops ; 
 int FUNC12 (struct viommu_dev*,struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct device *dev)
{
	int ret;
	struct iommu_group *group;
	struct viommu_endpoint *vdev;
	struct viommu_dev *viommu = NULL;
	struct iommu_fwspec *fwspec = FUNC4(dev);

	if (!fwspec || fwspec->ops != &viommu_ops)
		return -ENODEV;

	viommu = FUNC11(fwspec->iommu_fwnode);
	if (!viommu)
		return -ENODEV;

	vdev = FUNC10(sizeof(*vdev), GFP_KERNEL);
	if (!vdev)
		return -ENOMEM;

	vdev->dev = dev;
	vdev->viommu = viommu;
	FUNC0(&vdev->resv_regions);
	fwspec->iommu_priv = vdev;

	if (viommu->probe_size) {
		/* Get additional information for this endpoint */
		ret = FUNC12(viommu, dev);
		if (ret)
			goto err_free_dev;
	}

	ret = FUNC5(&viommu->iommu, dev);
	if (ret)
		goto err_free_dev;

	/*
	 * Last step creates a default domain and attaches to it. Everything
	 * must be ready.
	 */
	group = FUNC7(dev);
	if (FUNC1(group)) {
		ret = FUNC2(group);
		goto err_unlink_dev;
	}

	FUNC8(group);

	return FUNC3(group);

err_unlink_dev:
	FUNC6(&viommu->iommu, dev);
err_free_dev:
	FUNC13(dev, &vdev->resv_regions);
	FUNC9(vdev);

	return ret;
}