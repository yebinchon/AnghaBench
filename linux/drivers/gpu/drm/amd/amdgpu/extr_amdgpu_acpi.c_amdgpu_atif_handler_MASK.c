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
struct atif_sbios_requests {int pending; int backlight_level; } ;
struct amdgpu_encoder_atom_dig {int /*<<< orphan*/  bl_dev; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int flags; TYPE_3__* ddev; struct amdgpu_atif* atif; } ;
struct TYPE_5__ {scalar_t__ sbios_requests; } ;
struct TYPE_4__ {scalar_t__ command_code; int /*<<< orphan*/  enabled; } ;
struct amdgpu_atif {struct amdgpu_encoder* encoder_for_bl; TYPE_2__ functions; TYPE_1__ notification_cfg; } ;
struct acpi_bus_event {scalar_t__ type; int /*<<< orphan*/  device_class; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_VIDEO_CLASS ; 
 scalar_t__ ACPI_VIDEO_NOTIFY_PROBE ; 
 int AMD_IS_PX ; 
 int ATIF_DGPU_DISPLAY_EVENT ; 
 int ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST ; 
 int /*<<< orphan*/  BACKLIGHT_UPDATE_HOTKEY ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int FUNC1 (struct amdgpu_atif*,struct atif_sbios_requests*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,struct amdgpu_encoder*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct amdgpu_device *adev,
			       struct acpi_bus_event *event)
{
	struct amdgpu_atif *atif = adev->atif;
	int count;

	FUNC0("event, device_class = %s, type = %#x\n",
			event->device_class, event->type);

	if (FUNC9(event->device_class, ACPI_VIDEO_CLASS) != 0)
		return NOTIFY_DONE;

	/* Is this actually our event? */
	if (!atif ||
	    !atif->notification_cfg.enabled ||
	    event->type != atif->notification_cfg.command_code) {
		/* These events will generate keypresses otherwise */
		if (event->type == ACPI_VIDEO_NOTIFY_PROBE)
			return NOTIFY_BAD;
		else
			return NOTIFY_DONE;
	}

	if (atif->functions.sbios_requests) {
		struct atif_sbios_requests req;

		/* Check pending SBIOS requests */
		count = FUNC1(atif, &req);

		if (count <= 0)
			return NOTIFY_BAD;

		FUNC0("ATIF: %d pending SBIOS requests\n", count);

		/* todo: add DC handling */
		if ((req.pending & ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST) &&
		    !FUNC2(adev)) {
			struct amdgpu_encoder *enc = atif->encoder_for_bl;

			if (enc) {
				struct amdgpu_encoder_atom_dig *dig = enc->enc_priv;

				FUNC0("Changing brightness to %d\n",
						 req.backlight_level);

				FUNC3(adev, enc, req.backlight_level);

#if defined(CONFIG_BACKLIGHT_CLASS_DEVICE) || defined(CONFIG_BACKLIGHT_CLASS_DEVICE_MODULE)
				backlight_force_update(dig->bl_dev,
						       BACKLIGHT_UPDATE_HOTKEY);
#endif
			}
		}
		if (req.pending & ATIF_DGPU_DISPLAY_EVENT) {
			if (adev->flags & AMD_IS_PX) {
				FUNC6(adev->ddev->dev);
				/* Just fire off a uevent and let userspace tell us what to do */
				FUNC5(adev->ddev);
				FUNC7(adev->ddev->dev);
				FUNC8(adev->ddev->dev);
			}
		}
		/* TODO: check other events */
	}

	/* We've handled the event, stop the notifier chain. The ACPI interface
	 * overloads ACPI_VIDEO_NOTIFY_PROBE, we don't want to send that to
	 * userspace if the event was generated only to signal a SBIOS
	 * request.
	 */
	return NOTIFY_BAD;
}