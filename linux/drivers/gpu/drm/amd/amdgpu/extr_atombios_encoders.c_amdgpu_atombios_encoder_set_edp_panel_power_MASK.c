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
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {scalar_t__ connector_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  atom_context; } ;
struct amdgpu_device {TYPE_3__ mode_info; } ;
struct TYPE_8__ {int /*<<< orphan*/  hpd; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct amdgpu_connector {TYPE_4__ hpd; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int ATOM_TRANSMITTER_ACTION_POWER_OFF ; 
 int ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 int /*<<< orphan*/  COMMAND ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIPHYTransmitterControl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (union dig_transmitter_control*,int /*<<< orphan*/ ,int) ; 
 struct amdgpu_connector* FUNC6 (struct drm_connector*) ; 

bool
FUNC7(struct drm_connector *connector,
				     int action)
{
	struct amdgpu_connector *amdgpu_connector = FUNC6(connector);
	struct drm_device *dev = amdgpu_connector->base.dev;
	struct amdgpu_device *adev = dev->dev_private;
	union dig_transmitter_control args;
	int index = FUNC0(COMMAND, UNIPHYTransmitterControl);
	uint8_t frev, crev;

	if (connector->connector_type != DRM_MODE_CONNECTOR_eDP)
		goto done;

	if ((action != ATOM_TRANSMITTER_ACTION_POWER_ON) &&
	    (action != ATOM_TRANSMITTER_ACTION_POWER_OFF))
		goto done;

	if (!FUNC2(adev->mode_info.atom_context, index, &frev, &crev))
		goto done;

	FUNC5(&args, 0, sizeof(args));

	args.v1.ucAction = action;

	FUNC1(adev->mode_info.atom_context, index, (uint32_t *)&args);

	/* wait for the panel to power up */
	if (action == ATOM_TRANSMITTER_ACTION_POWER_ON) {
		int i;

		for (i = 0; i < 300; i++) {
			if (FUNC3(adev, amdgpu_connector->hpd.hpd))
				return true;
			FUNC4(1);
		}
		return false;
	}
done:
	return true;
}