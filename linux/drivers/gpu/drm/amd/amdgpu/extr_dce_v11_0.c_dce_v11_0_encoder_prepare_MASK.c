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
struct drm_encoder {TYPE_1__* dev; } ;
struct drm_connector {scalar_t__ connector_type; } ;
struct amdgpu_encoder_atom_dig {size_t dig_encoder; int /*<<< orphan*/  afmt; } ;
struct amdgpu_encoder {int active_device; struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct TYPE_5__ {int /*<<< orphan*/ * afmt; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_6__ {scalar_t__ cd_valid; } ;
struct amdgpu_connector {TYPE_3__ router; } ;
struct TYPE_4__ {struct amdgpu_device* dev_private; } ;

/* Variables and functions */
 int ATOM_DEVICE_DFP_SUPPORT ; 
 int ATOM_DEVICE_LCD_SUPPORT ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 scalar_t__ ENCODER_OBJECT_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC3 (struct drm_encoder*) ; 
 struct drm_connector* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_connector*) ; 
 size_t FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 
 struct amdgpu_connector* FUNC8 (struct drm_connector*) ; 
 struct amdgpu_encoder* FUNC9 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC10(struct drm_encoder *encoder)
{
	struct amdgpu_device *adev = encoder->dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder = FUNC9(encoder);
	struct drm_connector *connector = FUNC4(encoder);

	if ((amdgpu_encoder->active_device &
	     (ATOM_DEVICE_DFP_SUPPORT | ATOM_DEVICE_LCD_SUPPORT)) ||
	    (FUNC3(encoder) !=
	     ENCODER_OBJECT_ID_NONE)) {
		struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
		if (dig) {
			dig->dig_encoder = FUNC6(encoder);
			if (amdgpu_encoder->active_device & ATOM_DEVICE_DFP_SUPPORT)
				dig->afmt = adev->mode_info.afmt[dig->dig_encoder];
		}
	}

	FUNC2(adev, true);

	if (connector) {
		struct amdgpu_connector *amdgpu_connector = FUNC8(connector);

		/* select the clock/data port if it uses a router */
		if (amdgpu_connector->router.cd_valid)
			FUNC5(amdgpu_connector);

		/* turn eDP panel on for mode set */
		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP)
			FUNC1(connector,
							     ATOM_TRANSMITTER_ACTION_POWER_ON);
	}

	/* this is needed for the pll/ss setup to work correctly in some cases */
	FUNC0(encoder);
	/* set up the FMT blocks */
	FUNC7(encoder);
}