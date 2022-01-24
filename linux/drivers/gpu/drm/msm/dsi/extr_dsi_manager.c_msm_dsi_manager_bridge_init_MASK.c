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
typedef  int /*<<< orphan*/  u8 ;
struct msm_dsi {struct drm_encoder* encoder; TYPE_1__* dev; } ;
struct drm_bridge {int /*<<< orphan*/ * funcs; } ;
struct dsi_bridge {struct drm_bridge base; int /*<<< orphan*/  id; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_bridge* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dsi_bridge* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_encoder*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dsi_mgr_bridge_funcs ; 
 struct msm_dsi* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_bridge*) ; 

struct drm_bridge *FUNC5(u8 id)
{
	struct msm_dsi *msm_dsi = FUNC3(id);
	struct drm_bridge *bridge = NULL;
	struct dsi_bridge *dsi_bridge;
	struct drm_encoder *encoder;
	int ret;

	dsi_bridge = FUNC1(msm_dsi->dev->dev,
				sizeof(*dsi_bridge), GFP_KERNEL);
	if (!dsi_bridge) {
		ret = -ENOMEM;
		goto fail;
	}

	dsi_bridge->id = id;

	encoder = msm_dsi->encoder;

	bridge = &dsi_bridge->base;
	bridge->funcs = &dsi_mgr_bridge_funcs;

	ret = FUNC2(encoder, bridge, NULL);
	if (ret)
		goto fail;

	return bridge;

fail:
	if (bridge)
		FUNC4(bridge);

	return FUNC0(ret);
}