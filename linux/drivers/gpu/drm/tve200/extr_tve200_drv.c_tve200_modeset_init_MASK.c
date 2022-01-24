#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tve200_drm_dev_private {struct drm_bridge* bridge; int /*<<< orphan*/  connector; struct drm_panel* panel; int /*<<< orphan*/  pipe; } ;
struct drm_panel {int /*<<< orphan*/  dev; int /*<<< orphan*/  connector; } ;
struct drm_mode_config {int min_width; int max_width; int min_height; int max_height; int /*<<< orphan*/ * funcs; } ;
struct drm_device {TYPE_1__* dev; struct drm_mode_config mode_config; struct tve200_drm_dev_private* dev_private; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_Unknown ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct drm_bridge*) ; 
 int FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_panel**,struct drm_bridge**) ; 
 struct drm_bridge* FUNC10 (struct drm_panel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_bridge*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct drm_bridge*) ; 
 int FUNC13 (struct drm_device*,int) ; 
 int /*<<< orphan*/  mode_config_funcs ; 
 int FUNC14 (struct drm_device*) ; 

__attribute__((used)) static int FUNC15(struct drm_device *dev)
{
	struct drm_mode_config *mode_config;
	struct tve200_drm_dev_private *priv = dev->dev_private;
	struct drm_panel *panel;
	struct drm_bridge *bridge;
	int ret = 0;

	FUNC7(dev);
	mode_config = &dev->mode_config;
	mode_config->funcs = &mode_config_funcs;
	mode_config->min_width = 352;
	mode_config->max_width = 720;
	mode_config->min_height = 240;
	mode_config->max_height = 576;

	ret = FUNC9(dev->dev->of_node,
					  0, 0, &panel, &bridge);
	if (ret && ret != -ENODEV)
		return ret;
	if (panel) {
		bridge = FUNC10(panel,
					      DRM_MODE_CONNECTOR_Unknown);
		if (FUNC0(bridge)) {
			ret = FUNC1(bridge);
			goto out_bridge;
		}
	} else {
		/*
		 * TODO: when we are using a different bridge than a panel
		 * (such as a dumb VGA connector) we need to devise a different
		 * method to get the connector out of the bridge.
		 */
		FUNC2(dev->dev, "the bridge is not a panel\n");
		goto out_bridge;
	}

	ret = FUNC14(dev);
	if (ret) {
		FUNC2(dev->dev, "failed to init display\n");
		goto out_bridge;
	}

	ret = FUNC12(&priv->pipe,
						    bridge);
	if (ret) {
		FUNC2(dev->dev, "failed to attach bridge\n");
		goto out_bridge;
	}

	priv->panel = panel;
	priv->connector = panel->connector;
	priv->bridge = bridge;

	FUNC3(dev->dev, "attached to panel %s\n",
		 FUNC4(panel->dev));

	ret = FUNC13(dev, 1);
	if (ret) {
		FUNC2(dev->dev, "failed to init vblank\n");
		goto out_bridge;
	}

	FUNC8(dev);
	FUNC5(dev);

	goto finish;

out_bridge:
	if (panel)
		FUNC11(bridge);
	FUNC6(dev);
finish:
	return ret;
}