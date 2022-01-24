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
struct vic {int /*<<< orphan*/  channel; scalar_t__ domain; int /*<<< orphan*/  dev; } ;
struct tegra_drm_client {int dummy; } ;
struct tegra_drm {scalar_t__ domain; } ;
struct iommu_group {int dummy; } ;
struct host1x_client {int /*<<< orphan*/ * syncpts; int /*<<< orphan*/  dev; int /*<<< orphan*/  parent; } ;
struct drm_device {struct tegra_drm* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct drm_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct host1x_client*,int /*<<< orphan*/ ) ; 
 struct tegra_drm_client* FUNC6 (struct host1x_client*) ; 
 int FUNC7 (scalar_t__,struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct iommu_group*) ; 
 struct iommu_group* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct tegra_drm*,struct tegra_drm_client*) ; 
 struct vic* FUNC11 (struct tegra_drm_client*) ; 

__attribute__((used)) static int FUNC12(struct host1x_client *client)
{
	struct tegra_drm_client *drm = FUNC6(client);
	struct iommu_group *group = FUNC9(client->dev);
	struct drm_device *dev = FUNC1(client->parent);
	struct tegra_drm *tegra = dev->dev_private;
	struct vic *vic = FUNC11(drm);
	int err;

	if (group && tegra->domain) {
		err = FUNC7(tegra->domain, group);
		if (err < 0) {
			FUNC0(vic->dev, "failed to attach to domain: %d\n",
				err);
			return err;
		}

		vic->domain = tegra->domain;
	}

	vic->channel = FUNC3(client->dev);
	if (!vic->channel) {
		err = -ENOMEM;
		goto detach;
	}

	client->syncpts[0] = FUNC5(client, 0);
	if (!client->syncpts[0]) {
		err = -ENOMEM;
		goto free_channel;
	}

	err = FUNC10(tegra, drm);
	if (err < 0)
		goto free_syncpt;

	return 0;

free_syncpt:
	FUNC4(client->syncpts[0]);
free_channel:
	FUNC2(vic->channel);
detach:
	if (group && tegra->domain)
		FUNC8(tegra->domain, group);

	return err;
}