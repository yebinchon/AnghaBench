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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_display_mode {int flags; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct intel_crt {int /*<<< orphan*/  adpa_reg; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int ADPA_DAC_ENABLE ; 
 int ADPA_HOTPLUG_BITS ; 
 int ADPA_HSYNC_ACTIVE_HIGH ; 
 int ADPA_HSYNC_CNTL_DISABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ADPA_VSYNC_ACTIVE_HIGH ; 
 int ADPA_VSYNC_CNTL_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct drm_i915_private*) ; 
 struct intel_crt* FUNC8 (struct intel_encoder*) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct intel_encoder *encoder,
			       const struct intel_crtc_state *crtc_state,
			       int mode)
{
	struct drm_i915_private *dev_priv = FUNC9(encoder->base.dev);
	struct intel_crt *crt = FUNC8(encoder);
	struct intel_crtc *crtc = FUNC10(crtc_state->base.crtc);
	const struct drm_display_mode *adjusted_mode = &crtc_state->base.adjusted_mode;
	u32 adpa;

	if (FUNC7(dev_priv) >= 5)
		adpa = ADPA_HOTPLUG_BITS;
	else
		adpa = 0;

	if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
		adpa |= ADPA_HSYNC_ACTIVE_HIGH;
	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
		adpa |= ADPA_VSYNC_ACTIVE_HIGH;

	/* For CPT allow 3 pipe config, for others just use A or B */
	if (FUNC4(dev_priv))
		; /* Those bits don't exist here */
	else if (FUNC3(dev_priv))
		adpa |= FUNC1(crtc->pipe);
	else
		adpa |= FUNC0(crtc->pipe);

	if (!FUNC5(dev_priv))
		FUNC6(FUNC2(crtc->pipe), 0);

	switch (mode) {
	case DRM_MODE_DPMS_ON:
		adpa |= ADPA_DAC_ENABLE;
		break;
	case DRM_MODE_DPMS_STANDBY:
		adpa |= ADPA_DAC_ENABLE | ADPA_HSYNC_CNTL_DISABLE;
		break;
	case DRM_MODE_DPMS_SUSPEND:
		adpa |= ADPA_DAC_ENABLE | ADPA_VSYNC_CNTL_DISABLE;
		break;
	case DRM_MODE_DPMS_OFF:
		adpa |= ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE;
		break;
	}

	FUNC6(crt->adpa_reg, adpa);
}