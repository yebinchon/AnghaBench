#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* funcs; int /*<<< orphan*/  polled; } ;
struct tc358764 {TYPE_2__ connector; int /*<<< orphan*/  panel; } ;
struct drm_device {int /*<<< orphan*/  fb_helper; } ;
struct drm_bridge {int /*<<< orphan*/  encoder; struct drm_device* dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* reset ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 struct tc358764* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  tc358764_connector_funcs ; 
 int /*<<< orphan*/  tc358764_connector_helper_funcs ; 

__attribute__((used)) static int FUNC9(struct drm_bridge *bridge)
{
	struct tc358764 *ctx = FUNC1(bridge);
	struct drm_device *drm = bridge->dev;
	int ret;

	ctx->connector.polled = DRM_CONNECTOR_POLL_HPD;
	ret = FUNC4(drm, &ctx->connector,
				 &tc358764_connector_funcs,
				 DRM_MODE_CONNECTOR_LVDS);
	if (ret) {
		FUNC0("Failed to initialize connector\n");
		return ret;
	}

	FUNC3(&ctx->connector,
				 &tc358764_connector_helper_funcs);
	FUNC2(&ctx->connector, bridge->encoder);
	FUNC7(ctx->panel, &ctx->connector);
	ctx->connector.funcs->reset(&ctx->connector);
	FUNC6(drm->fb_helper, &ctx->connector);
	FUNC5(&ctx->connector);

	return 0;
}