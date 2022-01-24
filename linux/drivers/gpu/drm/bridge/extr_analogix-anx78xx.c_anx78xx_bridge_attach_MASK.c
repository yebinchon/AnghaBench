#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct drm_bridge {int /*<<< orphan*/  encoder; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  polled; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  transfer; int /*<<< orphan*/ * dev; } ;
struct anx78xx {TYPE_3__ connector; TYPE_2__ aux; TYPE_1__* client; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DisplayPort ; 
 int ENODEV ; 
 int /*<<< orphan*/  anx78xx_aux_transfer ; 
 int /*<<< orphan*/  anx78xx_connector_funcs ; 
 int /*<<< orphan*/  anx78xx_connector_helper_funcs ; 
 struct anx78xx* FUNC1 (struct drm_bridge*) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct drm_bridge *bridge)
{
	struct anx78xx *anx78xx = FUNC1(bridge);
	int err;

	if (!bridge->encoder) {
		FUNC0("Parent encoder object not found");
		return -ENODEV;
	}

	/* Register aux channel */
	anx78xx->aux.name = "DP-AUX";
	anx78xx->aux.dev = &anx78xx->client->dev;
	anx78xx->aux.transfer = anx78xx_aux_transfer;

	err = FUNC6(&anx78xx->aux);
	if (err < 0) {
		FUNC0("Failed to register aux channel: %d\n", err);
		return err;
	}

	err = FUNC4(bridge->dev, &anx78xx->connector,
				 &anx78xx_connector_funcs,
				 DRM_MODE_CONNECTOR_DisplayPort);
	if (err) {
		FUNC0("Failed to initialize connector: %d\n", err);
		return err;
	}

	FUNC3(&anx78xx->connector,
				 &anx78xx_connector_helper_funcs);

	err = FUNC5(&anx78xx->connector);
	if (err) {
		FUNC0("Failed to register connector: %d\n", err);
		return err;
	}

	anx78xx->connector.polled = DRM_CONNECTOR_POLL_HPD;

	err = FUNC2(&anx78xx->connector,
					   bridge->encoder);
	if (err) {
		FUNC0("Failed to link up connector to encoder: %d\n", err);
		return err;
	}

	return 0;
}