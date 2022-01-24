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
struct tegra_drm {struct iommu_group* group; int /*<<< orphan*/  domain; } ;
struct iommu_group {int dummy; } ;
struct host1x_client {int /*<<< orphan*/  parent; } ;
struct drm_device {struct tegra_drm* dev_private; } ;

/* Variables and functions */
 struct drm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_group*) ; 

void FUNC3(struct host1x_client *client,
				struct iommu_group *group)
{
	struct drm_device *drm = FUNC0(client->parent);
	struct tegra_drm *tegra = drm->dev_private;

	if (group) {
		if (group == tegra->group) {
			FUNC1(tegra->domain, group);
			tegra->group = NULL;
		}

		FUNC2(group);
	}
}