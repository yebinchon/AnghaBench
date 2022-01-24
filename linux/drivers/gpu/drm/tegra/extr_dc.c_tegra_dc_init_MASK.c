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
struct tegra_drm {scalar_t__ pitch_align; } ;
struct tegra_dc {int /*<<< orphan*/  syncpt; struct drm_plane* group; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; TYPE_1__* soc; int /*<<< orphan*/  base; } ;
struct host1x_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  parent; } ;
struct drm_plane {int dummy; } ;
struct drm_device {struct tegra_drm* dev_private; } ;
struct TYPE_2__ {scalar_t__ pitch_align; scalar_t__ supports_cursor; scalar_t__ wgrps; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned long HOST1X_SYNCPT_CLIENT_MANAGED ; 
 scalar_t__ FUNC0 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*) ; 
 int FUNC2 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct drm_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct drm_device*,int /*<<< orphan*/ *,struct drm_plane*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_plane*) ; 
 struct drm_plane* FUNC11 (struct host1x_client*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct host1x_client*,struct drm_plane*) ; 
 struct tegra_dc* FUNC13 (struct host1x_client*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct host1x_client*,unsigned long) ; 
 int /*<<< orphan*/  tegra_crtc_funcs ; 
 int /*<<< orphan*/  tegra_crtc_helper_funcs ; 
 struct drm_plane* FUNC16 (struct drm_device*,struct tegra_dc*) ; 
 struct drm_plane* FUNC17 (struct drm_device*,struct tegra_dc*) ; 
 struct drm_plane* FUNC18 (struct drm_device*,struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC19 (struct tegra_dc*) ; 
 int /*<<< orphan*/  tegra_dc_irq ; 
 struct drm_plane* FUNC20 (struct drm_device*,struct tegra_dc*,int,int) ; 
 int FUNC21 (struct drm_device*,struct tegra_dc*) ; 

__attribute__((used)) static int FUNC22(struct host1x_client *client)
{
	struct drm_device *drm = FUNC4(client->parent);
	unsigned long flags = HOST1X_SYNCPT_CLIENT_MANAGED;
	struct tegra_dc *dc = FUNC13(client);
	struct tegra_drm *tegra = drm->dev_private;
	struct drm_plane *primary = NULL;
	struct drm_plane *cursor = NULL;
	int err;

	/*
	 * XXX do not register DCs with no window groups because we cannot
	 * assign a primary plane to them, which in turn will cause KMS to
	 * crash.
	 */
	if (!FUNC19(dc))
		return 0;

	dc->syncpt = FUNC15(client, flags);
	if (!dc->syncpt)
		FUNC6(dc->dev, "failed to allocate syncpoint\n");

	dc->group = FUNC11(client, true);
	if (FUNC0(dc->group)) {
		err = FUNC2(dc->group);
		FUNC3(client->dev, "failed to attach to domain: %d\n", err);
		return err;
	}

	if (dc->soc->wgrps)
		primary = FUNC17(drm, dc);
	else
		primary = FUNC16(drm, dc);

	if (FUNC0(primary)) {
		err = FUNC2(primary);
		goto cleanup;
	}

	if (dc->soc->supports_cursor) {
		cursor = FUNC18(drm, dc);
		if (FUNC0(cursor)) {
			err = FUNC2(cursor);
			goto cleanup;
		}
	} else {
		/* dedicate one overlay to mouse cursor */
		cursor = FUNC20(drm, dc, 2, true);
		if (FUNC0(cursor)) {
			err = FUNC2(cursor);
			goto cleanup;
		}
	}

	err = FUNC9(drm, &dc->base, primary, cursor,
					&tegra_crtc_funcs, NULL);
	if (err < 0)
		goto cleanup;

	FUNC8(&dc->base, &tegra_crtc_helper_funcs);

	/*
	 * Keep track of the minimum pitch alignment across all display
	 * controllers.
	 */
	if (dc->soc->pitch_align > tegra->pitch_align)
		tegra->pitch_align = dc->soc->pitch_align;

	err = FUNC21(drm, dc);
	if (err < 0 && err != -ENODEV) {
		FUNC3(dc->dev, "failed to initialize RGB output: %d\n", err);
		goto cleanup;
	}

	err = FUNC7(dc->dev, dc->irq, tegra_dc_irq, 0,
			       FUNC5(dc->dev), dc);
	if (err < 0) {
		FUNC3(dc->dev, "failed to request IRQ#%u: %d\n", dc->irq,
			err);
		goto cleanup;
	}

	return 0;

cleanup:
	if (!FUNC1(cursor))
		FUNC10(cursor);

	if (!FUNC0(primary))
		FUNC10(primary);

	FUNC12(client, dc->group);
	FUNC14(dc->syncpt);

	return err;
}