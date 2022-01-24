#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct psb_intel_sdvo {int /*<<< orphan*/  attached_output; int /*<<< orphan*/  sdvo_reg; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
#define  DRM_MODE_DPMS_OFF 129 
#define  DRM_MODE_DPMS_ON 128 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SDVO_CMD_STATUS_SUCCESS ; 
 int SDVO_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (struct psb_intel_sdvo*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct psb_intel_sdvo*,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct psb_intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct psb_intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct psb_intel_sdvo*,int) ; 
 struct psb_intel_sdvo* FUNC11 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC12(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct psb_intel_sdvo *psb_intel_sdvo = FUNC11(encoder);
	u32 temp;
	int i;
	int need_aux = FUNC2(dev) ? 1 : 0;

	switch (mode) {
	case DRM_MODE_DPMS_ON:
		FUNC0("DPMS_ON");
		break;
	case DRM_MODE_DPMS_OFF:
		FUNC0("DPMS_OFF");
		break;
	default:
		FUNC0("DPMS: %d", mode);
	}

	if (mode != DRM_MODE_DPMS_ON) {
		FUNC8(psb_intel_sdvo, 0);
		if (0)
			FUNC9(psb_intel_sdvo, mode);

		if (mode == DRM_MODE_DPMS_OFF) {
			if (need_aux)
				temp = FUNC4(psb_intel_sdvo->sdvo_reg);
			else
				temp = FUNC3(psb_intel_sdvo->sdvo_reg);

			if ((temp & SDVO_ENABLE) != 0) {
				FUNC10(psb_intel_sdvo, temp & ~SDVO_ENABLE);
			}
		}
	} else {
		bool input1, input2;
		u8 status;

		if (need_aux)
			temp = FUNC4(psb_intel_sdvo->sdvo_reg);
		else
			temp = FUNC3(psb_intel_sdvo->sdvo_reg);

		if ((temp & SDVO_ENABLE) == 0)
			FUNC10(psb_intel_sdvo, temp | SDVO_ENABLE);

		for (i = 0; i < 2; i++)
			FUNC6(dev);

		status = FUNC7(psb_intel_sdvo, &input1, &input2);
		/* Warn if the device reported failure to sync.
		 * A lot of SDVO devices fail to notify of sync, but it's
		 * a given it the status is a success, we succeeded.
		 */
		if (status == SDVO_CMD_STATUS_SUCCESS && !input1) {
			FUNC1("First %s output reported failure to "
					"sync\n", FUNC5(psb_intel_sdvo));
		}

		if (0)
			FUNC9(psb_intel_sdvo, mode);
		FUNC8(psb_intel_sdvo, psb_intel_sdvo->attached_output);
	}
	return;
}