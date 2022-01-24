#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct msm_kms {TYPE_3__* funcs; } ;
struct msm_dsi {struct drm_panel* panel; int /*<<< orphan*/  encoder; int /*<<< orphan*/  id; int /*<<< orphan*/  host; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_panel {int dummy; } ;
struct drm_connector {TYPE_2__* dev; int /*<<< orphan*/  base; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_split_display ) (struct msm_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  tile_property; } ;
struct TYPE_5__ {TYPE_1__ mode_config; struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msm_dsi* FUNC6 (int /*<<< orphan*/ ) ; 
 struct msm_dsi* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct msm_dsi*) ; 
 struct drm_panel* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct msm_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct drm_connector *conn, u8 id)
{
	struct msm_drm_private *priv = conn->dev->dev_private;
	struct msm_kms *kms = priv->kms;
	struct msm_dsi *msm_dsi = FUNC6(id);
	struct msm_dsi *other_dsi = FUNC7(id);
	struct msm_dsi *master_dsi, *slave_dsi;
	struct drm_panel *panel;

	if (FUNC1() && !FUNC3(id)) {
		master_dsi = other_dsi;
		slave_dsi = msm_dsi;
	} else {
		master_dsi = msm_dsi;
		slave_dsi = other_dsi;
	}

	/*
	 * There is only 1 panel in the global panel list for dual DSI mode.
	 * Therefore slave dsi should get the drm_panel instance from master
	 * dsi.
	 */
	panel = FUNC9(master_dsi->host);
	if (FUNC2(panel)) {
		FUNC0("Could not find panel for %u (%ld)\n", msm_dsi->id,
			  FUNC4(panel));
		return FUNC4(panel);
	}

	if (!panel || !FUNC1())
		goto out;

	FUNC5(&conn->base,
				   conn->dev->mode_config.tile_property, 0);

	/*
	 * Set split display info to kms once dual DSI panel is connected to
	 * both hosts.
	 */
	if (other_dsi && other_dsi->panel && kms->funcs->set_split_display) {
		kms->funcs->set_split_display(kms, master_dsi->encoder,
					      slave_dsi->encoder,
					      FUNC8(msm_dsi));
	}

out:
	msm_dsi->panel = panel;
	return 0;
}