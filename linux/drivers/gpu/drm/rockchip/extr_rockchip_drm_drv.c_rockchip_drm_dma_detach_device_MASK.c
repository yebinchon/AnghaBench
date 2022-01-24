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
struct rockchip_drm_private {struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_domain*,struct device*) ; 
 int /*<<< orphan*/  is_support_iommu ; 

void FUNC1(struct drm_device *drm_dev,
				    struct device *dev)
{
	struct rockchip_drm_private *private = drm_dev->dev_private;
	struct iommu_domain *domain = private->domain;

	if (!is_support_iommu)
		return;

	FUNC0(domain, dev);
}