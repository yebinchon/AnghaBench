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
struct host1x_client {int /*<<< orphan*/ * syncpts; int /*<<< orphan*/  dev; int /*<<< orphan*/  parent; } ;
struct gr2d {int /*<<< orphan*/  channel; int /*<<< orphan*/  group; } ;
struct drm_device {int /*<<< orphan*/  dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long HOST1X_SYNCPT_HAS_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct drm_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct host1x_client*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct host1x_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct host1x_client*,unsigned long) ; 
 struct tegra_drm_client* FUNC10 (struct host1x_client*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct tegra_drm_client*) ; 
 struct gr2d* FUNC12 (struct tegra_drm_client*) ; 

__attribute__((used)) static int FUNC13(struct host1x_client *client)
{
	struct tegra_drm_client *drm = FUNC10(client);
	struct drm_device *dev = FUNC3(client->parent);
	unsigned long flags = HOST1X_SYNCPT_HAS_BASE;
	struct gr2d *gr2d = FUNC12(drm);
	int err;

	gr2d->channel = FUNC5(client->dev);
	if (!gr2d->channel)
		return -ENOMEM;

	client->syncpts[0] = FUNC9(client, flags);
	if (!client->syncpts[0]) {
		err = -ENOMEM;
		FUNC2(client->dev, "failed to request syncpoint: %d\n", err);
		goto put;
	}

	gr2d->group = FUNC6(client, false);
	if (FUNC0(gr2d->group)) {
		err = FUNC1(gr2d->group);
		FUNC2(client->dev, "failed to attach to domain: %d\n", err);
		goto free;
	}

	err = FUNC11(dev->dev_private, drm);
	if (err < 0) {
		FUNC2(client->dev, "failed to register client: %d\n", err);
		goto detach;
	}

	return 0;

detach:
	FUNC7(client, gr2d->group);
free:
	FUNC8(client->syncpts[0]);
put:
	FUNC4(gr2d->channel);
	return err;
}