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
typedef  scalar_t__ u64 ;
struct rockchip_drm_private {int /*<<< orphan*/  mm_lock; int /*<<< orphan*/  mm; TYPE_1__* domain; } ;
struct iommu_domain_geometry {scalar_t__ aperture_end; scalar_t__ aperture_start; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;
struct TYPE_2__ {struct iommu_domain_geometry geometry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  is_support_iommu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  platform_bus_type ; 

__attribute__((used)) static int FUNC4(struct drm_device *drm_dev)
{
	struct rockchip_drm_private *private = drm_dev->dev_private;
	struct iommu_domain_geometry *geometry;
	u64 start, end;

	if (!is_support_iommu)
		return 0;

	private->domain = FUNC2(&platform_bus_type);
	if (!private->domain)
		return -ENOMEM;

	geometry = &private->domain->geometry;
	start = geometry->aperture_start;
	end = geometry->aperture_end;

	FUNC0("IOMMU context initialized (aperture: %#llx-%#llx)\n",
		  start, end);
	FUNC1(&private->mm, start, end - start + 1);
	FUNC3(&private->mm_lock);

	return 0;
}