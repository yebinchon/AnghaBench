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
typedef  int uint32_t ;
struct radeon_device {int flags; scalar_t__ is_atom_bios; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int RADEON_CRTC_CRT_ON ; 
 int /*<<< orphan*/  RADEON_CRTC_EXT_CNTL ; 
 int /*<<< orphan*/  RADEON_DAC_CNTL ; 
 int /*<<< orphan*/  RADEON_DAC_MACRO_CNTL ; 
 int RADEON_DAC_PDWN ; 
 int RADEON_DAC_PDWN_B ; 
 int RADEON_DAC_PDWN_G ; 
 int RADEON_DAC_PDWN_R ; 
 int RADEON_SINGLE_CRTC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	uint32_t crtc_ext_cntl = FUNC1(RADEON_CRTC_EXT_CNTL);
	uint32_t dac_cntl = FUNC1(RADEON_DAC_CNTL);
	uint32_t dac_macro_cntl = FUNC1(RADEON_DAC_MACRO_CNTL);

	FUNC0("\n");

	switch (mode) {
	case DRM_MODE_DPMS_ON:
		crtc_ext_cntl |= RADEON_CRTC_CRT_ON;
		dac_cntl &= ~RADEON_DAC_PDWN;
		dac_macro_cntl &= ~(RADEON_DAC_PDWN_R |
				    RADEON_DAC_PDWN_G |
				    RADEON_DAC_PDWN_B);
		break;
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
	case DRM_MODE_DPMS_OFF:
		crtc_ext_cntl &= ~RADEON_CRTC_CRT_ON;
		dac_cntl |= RADEON_DAC_PDWN;
		dac_macro_cntl |= (RADEON_DAC_PDWN_R |
				   RADEON_DAC_PDWN_G |
				   RADEON_DAC_PDWN_B);
		break;
	}

	/* handled in radeon_crtc_dpms() */
	if (!(rdev->flags & RADEON_SINGLE_CRTC))
		FUNC2(RADEON_CRTC_EXT_CNTL, crtc_ext_cntl);
	FUNC2(RADEON_DAC_CNTL, dac_cntl);
	FUNC2(RADEON_DAC_MACRO_CNTL, dac_macro_cntl);

	if (rdev->is_atom_bios)
		FUNC3(encoder, (mode == DRM_MODE_DPMS_ON) ? true : false);
	else
		FUNC4(encoder, (mode == DRM_MODE_DPMS_ON) ? true : false);

}