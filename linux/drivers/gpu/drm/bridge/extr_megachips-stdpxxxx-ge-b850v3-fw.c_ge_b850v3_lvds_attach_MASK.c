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
struct i2c_client {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  polled; } ;
struct drm_bridge {int /*<<< orphan*/  encoder; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct i2c_client* stdp4028_i2c; struct drm_connector connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DisplayPort ; 
 int ENODEV ; 
 int /*<<< orphan*/  STDP4028_DPTX_DP_IRQ_EN ; 
 int /*<<< orphan*/  STDP4028_DPTX_IRQ_CONFIG ; 
 int /*<<< orphan*/  STDP4028_DPTX_IRQ_EN_REG ; 
 int /*<<< orphan*/  STDP4028_IRQ_OUT_CONF_REG ; 
 int FUNC1 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ge_b850v3_lvds_connector_funcs ; 
 int /*<<< orphan*/  ge_b850v3_lvds_connector_helper_funcs ; 
 TYPE_1__* ge_b850v3_lvds_ptr ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_bridge *bridge)
{
	struct drm_connector *connector = &ge_b850v3_lvds_ptr->connector;
	struct i2c_client *stdp4028_i2c
			= ge_b850v3_lvds_ptr->stdp4028_i2c;
	int ret;

	if (!bridge->encoder) {
		FUNC0("Parent encoder object not found");
		return -ENODEV;
	}

	connector->polled = DRM_CONNECTOR_POLL_HPD;

	FUNC2(connector,
				 &ge_b850v3_lvds_connector_helper_funcs);

	ret = FUNC3(bridge->dev, connector,
				 &ge_b850v3_lvds_connector_funcs,
				 DRM_MODE_CONNECTOR_DisplayPort);
	if (ret) {
		FUNC0("Failed to initialize connector with drm\n");
		return ret;
	}

	ret = FUNC1(connector, bridge->encoder);
	if (ret)
		return ret;

	/* Configures the bridge to re-enable interrupts after each ack. */
	FUNC4(stdp4028_i2c,
				  STDP4028_IRQ_OUT_CONF_REG,
				  STDP4028_DPTX_DP_IRQ_EN);

	/* Enable interrupts */
	FUNC4(stdp4028_i2c,
				  STDP4028_DPTX_IRQ_EN_REG,
				  STDP4028_DPTX_IRQ_CONFIG);

	return 0;
}