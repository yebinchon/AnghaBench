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
struct tegra_drm_client {int dummy; } ;
struct host1x_client {int /*<<< orphan*/ * syncpts; int /*<<< orphan*/  parent; } ;
struct gr3d {int /*<<< orphan*/  channel; int /*<<< orphan*/  group; } ;
struct drm_device {int /*<<< orphan*/  dev_private; } ;

/* Variables and functions */
 struct drm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct tegra_drm_client* FUNC4 (struct host1x_client*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct tegra_drm_client*) ; 
 struct gr3d* FUNC6 (struct tegra_drm_client*) ; 

__attribute__((used)) static int FUNC7(struct host1x_client *client)
{
	struct tegra_drm_client *drm = FUNC4(client);
	struct drm_device *dev = FUNC0(client->parent);
	struct gr3d *gr3d = FUNC6(drm);
	int err;

	err = FUNC5(dev->dev_private, drm);
	if (err < 0)
		return err;

	FUNC2(client, gr3d->group);
	FUNC3(client->syncpts[0]);
	FUNC1(gr3d->channel);

	return 0;
}