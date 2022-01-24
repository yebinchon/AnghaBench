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
struct radeon_encoder_atom_dig {size_t dig_encoder; int /*<<< orphan*/  afmt; } ;
struct radeon_encoder {int active_device; struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_5__ {int /*<<< orphan*/ * afmt; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ mode_info; } ;
struct TYPE_6__ {scalar_t__ cd_valid; } ;
struct radeon_connector {TYPE_3__ router; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct drm_connector {scalar_t__ connector_type; } ;
struct TYPE_4__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
 scalar_t__ FUNC3 (struct radeon_device*) ; 
 int ATOM_DEVICE_DFP_SUPPORT ; 
 int ATOM_DEVICE_LCD_SUPPORT ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 scalar_t__ CHIP_R600 ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 scalar_t__ ENCODER_OBJECT_ID_NONE ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*,int) ; 
 size_t FUNC11 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,size_t) ; 
 scalar_t__ FUNC13 (struct drm_encoder*) ; 
 struct drm_connector* FUNC14 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_connector*) ; 
 struct radeon_connector* FUNC16 (struct drm_connector*) ; 
 struct radeon_encoder* FUNC17 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC18(struct drm_encoder *encoder)
{
	struct radeon_device *rdev = encoder->dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC17(encoder);
	struct drm_connector *connector = FUNC14(encoder);

	if ((radeon_encoder->active_device &
	     (ATOM_DEVICE_DFP_SUPPORT | ATOM_DEVICE_LCD_SUPPORT)) ||
	    (FUNC13(encoder) !=
	     ENCODER_OBJECT_ID_NONE)) {
		struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
		if (dig) {
			if (dig->dig_encoder >= 0)
				FUNC12(rdev, dig->dig_encoder);
			dig->dig_encoder = FUNC11(encoder, -1);
			if (radeon_encoder->active_device & ATOM_DEVICE_DFP_SUPPORT) {
				if (rdev->family >= CHIP_R600)
					dig->afmt = rdev->mode_info.afmt[dig->dig_encoder];
				else
					/* RS600/690/740 have only 1 afmt block */
					dig->afmt = rdev->mode_info.afmt[0];
			}
		}
	}

	FUNC10(encoder, true);

	if (connector) {
		struct radeon_connector *radeon_connector = FUNC16(connector);

		/* select the clock/data port if it uses a router */
		if (radeon_connector->router.cd_valid)
			FUNC15(radeon_connector);

		/* turn eDP panel on for mode set */
		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP)
			FUNC4(connector,
						     ATOM_TRANSMITTER_ACTION_POWER_ON);
	}

	/* this is needed for the pll/ss setup to work correctly in some cases */
	FUNC5(encoder);
	/* set up the FMT blocks */
	if (FUNC3(rdev))
		FUNC9(encoder);
	else if (FUNC2(rdev))
		FUNC8(encoder);
	else if (FUNC1(rdev))
		FUNC7(encoder);
	else if (FUNC0(rdev))
		FUNC6(encoder);
}