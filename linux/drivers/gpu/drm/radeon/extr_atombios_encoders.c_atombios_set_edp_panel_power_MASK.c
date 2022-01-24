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
struct TYPE_6__ {int ucAction; } ;
union dig_transmitter_control {TYPE_2__ v1; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {TYPE_3__ mode_info; } ;
struct TYPE_8__ {int /*<<< orphan*/  hpd; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct radeon_connector {TYPE_4__ hpd; TYPE_1__ base; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {scalar_t__ connector_type; } ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int ATOM_TRANSMITTER_ACTION_POWER_OFF ; 
 int ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 int /*<<< orphan*/  COMMAND ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIPHYTransmitterControl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (union dig_transmitter_control*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct radeon_connector* FUNC7 (struct drm_connector*) ; 

bool
FUNC8(struct drm_connector *connector, int action)
{
	struct radeon_connector *radeon_connector = FUNC7(connector);
	struct drm_device *dev = radeon_connector->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	union dig_transmitter_control args;
	int index = FUNC1(COMMAND, UNIPHYTransmitterControl);
	uint8_t frev, crev;

	if (connector->connector_type != DRM_MODE_CONNECTOR_eDP)
		goto done;

	if (!FUNC0(rdev))
		goto done;

	if ((action != ATOM_TRANSMITTER_ACTION_POWER_ON) &&
	    (action != ATOM_TRANSMITTER_ACTION_POWER_OFF))
		goto done;

	if (!FUNC3(rdev->mode_info.atom_context, index, &frev, &crev))
		goto done;

	FUNC5(&args, 0, sizeof(args));

	args.v1.ucAction = action;

	FUNC2(rdev->mode_info.atom_context, index, (uint32_t *)&args);

	/* wait for the panel to power up */
	if (action == ATOM_TRANSMITTER_ACTION_POWER_ON) {
		int i;

		for (i = 0; i < 300; i++) {
			if (FUNC6(rdev, radeon_connector->hpd.hpd))
				return true;
			FUNC4(1);
		}
		return false;
	}
done:
	return true;
}