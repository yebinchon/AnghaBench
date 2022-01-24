#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_encoder {int devices; scalar_t__ encoder_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct radeon_connector {int devices; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_5__ {void* ucMisc; void* usDeviceID; int /*<<< orphan*/  ucDacType; } ;
struct TYPE_7__ {TYPE_1__ sDacload; } ;
typedef  TYPE_3__ DAC_LOAD_DETECTION_PS_ALLOCATION ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_DAC_A ; 
 int /*<<< orphan*/  ATOM_DAC_B ; 
 int ATOM_DEVICE_CRT1_SUPPORT ; 
 int ATOM_DEVICE_CRT2_SUPPORT ; 
 int ATOM_DEVICE_CRT_SUPPORT ; 
 int ATOM_DEVICE_CV_SUPPORT ; 
 int ATOM_DEVICE_TV1_SUPPORT ; 
 int ATOM_DEVICE_TV_SUPPORT ; 
 int /*<<< orphan*/  COMMAND ; 
 void* DAC_LOAD_MISC_YPrPb ; 
 int /*<<< orphan*/  DAC_LoadDetection ; 
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_DAC1 ; 
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*,int*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 struct radeon_connector* FUNC5 (struct drm_connector*) ; 
 struct radeon_encoder* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static bool
FUNC7(struct drm_encoder *encoder, struct drm_connector *connector)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC6(encoder);
	struct radeon_connector *radeon_connector = FUNC5(connector);

	if (radeon_encoder->devices & (ATOM_DEVICE_TV_SUPPORT |
				       ATOM_DEVICE_CV_SUPPORT |
				       ATOM_DEVICE_CRT_SUPPORT)) {
		DAC_LOAD_DETECTION_PS_ALLOCATION args;
		int index = FUNC0(COMMAND, DAC_LoadDetection);
		uint8_t frev, crev;

		FUNC4(&args, 0, sizeof(args));

		if (!FUNC2(rdev->mode_info.atom_context, index, &frev, &crev))
			return false;

		args.sDacload.ucMisc = 0;

		if ((radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_DAC1) ||
		    (radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1))
			args.sDacload.ucDacType = ATOM_DAC_A;
		else
			args.sDacload.ucDacType = ATOM_DAC_B;

		if (radeon_connector->devices & ATOM_DEVICE_CRT1_SUPPORT)
			args.sDacload.usDeviceID = FUNC3(ATOM_DEVICE_CRT1_SUPPORT);
		else if (radeon_connector->devices & ATOM_DEVICE_CRT2_SUPPORT)
			args.sDacload.usDeviceID = FUNC3(ATOM_DEVICE_CRT2_SUPPORT);
		else if (radeon_connector->devices & ATOM_DEVICE_CV_SUPPORT) {
			args.sDacload.usDeviceID = FUNC3(ATOM_DEVICE_CV_SUPPORT);
			if (crev >= 3)
				args.sDacload.ucMisc = DAC_LOAD_MISC_YPrPb;
		} else if (radeon_connector->devices & ATOM_DEVICE_TV1_SUPPORT) {
			args.sDacload.usDeviceID = FUNC3(ATOM_DEVICE_TV1_SUPPORT);
			if (crev >= 3)
				args.sDacload.ucMisc = DAC_LOAD_MISC_YPrPb;
		}

		FUNC1(rdev->mode_info.atom_context, index, (uint32_t *)&args);

		return true;
	} else
		return false;
}