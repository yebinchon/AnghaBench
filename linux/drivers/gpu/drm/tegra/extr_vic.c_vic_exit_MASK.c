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
struct vic {int /*<<< orphan*/ * domain; int /*<<< orphan*/  channel; } ;
struct tegra_drm_client {int dummy; } ;
struct tegra_drm {int dummy; } ;
struct iommu_group {int dummy; } ;
struct host1x_client {int /*<<< orphan*/ * syncpts; int /*<<< orphan*/  parent; int /*<<< orphan*/  dev; } ;
struct drm_device {struct tegra_drm* dev_private; } ;

/* Variables and functions */
 struct drm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct tegra_drm_client* FUNC3 (struct host1x_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iommu_group*) ; 
 struct iommu_group* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tegra_drm*,struct tegra_drm_client*) ; 
 struct vic* FUNC7 (struct tegra_drm_client*) ; 

__attribute__((used)) static int FUNC8(struct host1x_client *client)
{
	struct tegra_drm_client *drm = FUNC3(client);
	struct iommu_group *group = FUNC5(client->dev);
	struct drm_device *dev = FUNC0(client->parent);
	struct tegra_drm *tegra = dev->dev_private;
	struct vic *vic = FUNC7(drm);
	int err;

	err = FUNC6(tegra, drm);
	if (err < 0)
		return err;

	FUNC2(client->syncpts[0]);
	FUNC1(vic->channel);

	if (vic->domain) {
		FUNC4(vic->domain, group);
		vic->domain = NULL;
	}

	return 0;
}