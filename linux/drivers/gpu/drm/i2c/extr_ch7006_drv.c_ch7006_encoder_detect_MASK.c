#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int dummy; } ;
struct drm_encoder {TYPE_2__* dev; } ;
struct drm_connector {int /*<<< orphan*/  base; } ;
struct ch7006_state {int dummy; } ;
struct ch7006_priv {scalar_t__ subconnector; struct ch7006_state state; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_3__ {int /*<<< orphan*/  tv_subconnector_property; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH7006_CLKMODE ; 
 int CH7006_CLKMODE_MASTER ; 
 int /*<<< orphan*/  CH7006_DETECT ; 
 int CH7006_DETECT_CVBS_TEST ; 
 int CH7006_DETECT_SENSE ; 
 int CH7006_DETECT_SVIDEO_C_TEST ; 
 int CH7006_DETECT_SVIDEO_Y_TEST ; 
 int /*<<< orphan*/  CH7006_POWER ; 
 int /*<<< orphan*/  CH7006_POWER_LEVEL ; 
 int CH7006_POWER_RESET ; 
 scalar_t__ DRM_MODE_SUBCONNECTOR_Composite ; 
 scalar_t__ DRM_MODE_SUBCONNECTOR_SCART ; 
 scalar_t__ DRM_MODE_SUBCONNECTOR_SVIDEO ; 
 scalar_t__ DRM_MODE_SUBCONNECTOR_Unknown ; 
 int /*<<< orphan*/  NORMAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct ch7006_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct ch7006_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct i2c_client* FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ch7006_priv* FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static enum drm_connector_status FUNC9(struct drm_encoder *encoder,
						       struct drm_connector *connector)
{
	struct i2c_client *client = FUNC6(encoder);
	struct ch7006_priv *priv = FUNC8(encoder);
	struct ch7006_state *state = &priv->state;
	int det;

	FUNC1(client, "\n");

	FUNC4(client, state, CH7006_DETECT);
	FUNC4(client, state, CH7006_POWER);
	FUNC4(client, state, CH7006_CLKMODE);

	FUNC5(client, CH7006_POWER, CH7006_POWER_RESET |
					   FUNC0(CH7006_POWER_LEVEL, NORMAL));
	FUNC5(client, CH7006_CLKMODE, CH7006_CLKMODE_MASTER);

	FUNC5(client, CH7006_DETECT, CH7006_DETECT_SENSE);

	FUNC5(client, CH7006_DETECT, 0);

	det = FUNC3(client, CH7006_DETECT);

	FUNC2(client, state, CH7006_CLKMODE);
	FUNC2(client, state, CH7006_POWER);
	FUNC2(client, state, CH7006_DETECT);

	if ((det & (CH7006_DETECT_SVIDEO_Y_TEST|
		    CH7006_DETECT_SVIDEO_C_TEST|
		    CH7006_DETECT_CVBS_TEST)) == 0)
		priv->subconnector = DRM_MODE_SUBCONNECTOR_SCART;
	else if ((det & (CH7006_DETECT_SVIDEO_Y_TEST|
			 CH7006_DETECT_SVIDEO_C_TEST)) == 0)
		priv->subconnector = DRM_MODE_SUBCONNECTOR_SVIDEO;
	else if ((det & CH7006_DETECT_CVBS_TEST) == 0)
		priv->subconnector = DRM_MODE_SUBCONNECTOR_Composite;
	else
		priv->subconnector = DRM_MODE_SUBCONNECTOR_Unknown;

	FUNC7(&connector->base,
			encoder->dev->mode_config.tv_subconnector_property,
							priv->subconnector);

	return priv->subconnector ? connector_status_connected :
					connector_status_disconnected;
}