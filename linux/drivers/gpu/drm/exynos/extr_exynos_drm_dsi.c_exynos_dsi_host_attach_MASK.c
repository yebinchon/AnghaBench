#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mipi_dsi_host {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {int mode_flags; int /*<<< orphan*/  format; int /*<<< orphan*/  lanes; TYPE_2__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  status; } ;
struct drm_encoder {int /*<<< orphan*/ * bridge; struct drm_device* dev; } ;
struct exynos_dsi {int mode_flags; int /*<<< orphan*/  format; int /*<<< orphan*/  lanes; TYPE_4__ connector; int /*<<< orphan*/ * panel; int /*<<< orphan*/  dev; struct drm_bridge* out_bridge; struct drm_encoder encoder; } ;
struct TYPE_5__ {scalar_t__ poll_enabled; int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_7__ {int i80_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  EXYNOS_DISPLAY_TYPE_LCD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int /*<<< orphan*/  connector_status_connected ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_3__* FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_encoder*) ; 
 int FUNC8 (struct exynos_dsi*,TYPE_2__*) ; 
 struct exynos_dsi* FUNC9 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct drm_bridge* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct mipi_dsi_host *host,
				  struct mipi_dsi_device *device)
{
	struct exynos_dsi *dsi = FUNC9(host);
	struct drm_encoder *encoder = &dsi->encoder;
	struct drm_device *drm = encoder->dev;
	struct drm_bridge *out_bridge;

	out_bridge  = FUNC12(device->dev.of_node);
	if (out_bridge) {
		FUNC2(encoder, out_bridge, NULL);
		dsi->out_bridge = out_bridge;
		encoder->bridge = NULL;
	} else {
		int ret = FUNC7(encoder);

		if (ret) {
			FUNC0(dsi->dev,
				      "failed to create connector ret = %d\n",
				      ret);
			FUNC3(encoder);
			return ret;
		}

		dsi->panel = FUNC13(device->dev.of_node);
		if (FUNC1(dsi->panel)) {
			dsi->panel = NULL;
		} else {
			FUNC5(dsi->panel, &dsi->connector);
			dsi->connector.status = connector_status_connected;
		}
	}

	/*
	 * This is a temporary solution and should be made by more generic way.
	 *
	 * If attached panel device is for command mode one, dsi should register
	 * TE interrupt handler.
	 */
	if (!(device->mode_flags & MIPI_DSI_MODE_VIDEO)) {
		int ret = FUNC8(dsi, &device->dev);
		if (ret)
			return ret;
	}

	FUNC10(&drm->mode_config.mutex);

	dsi->lanes = device->lanes;
	dsi->format = device->format;
	dsi->mode_flags = device->mode_flags;
	FUNC6(drm, EXYNOS_DISPLAY_TYPE_LCD)->i80_mode =
			!(dsi->mode_flags & MIPI_DSI_MODE_VIDEO);

	FUNC11(&drm->mode_config.mutex);

	if (drm->mode_config.poll_enabled)
		FUNC4(drm);

	return 0;
}