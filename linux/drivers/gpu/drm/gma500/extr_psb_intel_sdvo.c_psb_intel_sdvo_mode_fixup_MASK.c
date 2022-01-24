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
struct psb_intel_sdvo {struct drm_display_mode const* sdvo_lvds_fixed_mode; scalar_t__ is_lvds; scalar_t__ is_tv; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_display_mode*,int) ; 
 int FUNC1 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct psb_intel_sdvo*,struct drm_display_mode const*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct psb_intel_sdvo*,struct drm_display_mode const*) ; 
 struct psb_intel_sdvo* FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static bool FUNC5(struct drm_encoder *encoder,
				  const struct drm_display_mode *mode,
				  struct drm_display_mode *adjusted_mode)
{
	struct psb_intel_sdvo *psb_intel_sdvo = FUNC4(encoder);
	int multiplier;

	/* We need to construct preferred input timings based on our
	 * output timings.  To do that, we have to set the output
	 * timings, even though this isn't really the right place in
	 * the sequence to do it. Oh well.
	 */
	if (psb_intel_sdvo->is_tv) {
		if (!FUNC3(psb_intel_sdvo, mode))
			return false;

		(void) FUNC2(psb_intel_sdvo,
							     mode,
							     adjusted_mode);
	} else if (psb_intel_sdvo->is_lvds) {
		if (!FUNC3(psb_intel_sdvo,
							     psb_intel_sdvo->sdvo_lvds_fixed_mode))
			return false;

		(void) FUNC2(psb_intel_sdvo,
							     mode,
							     adjusted_mode);
	}

	/* Make the CRTC code factor in the SDVO pixel multiplier.  The
	 * SDVO device will factor out the multiplier during mode_set.
	 */
	multiplier = FUNC1(adjusted_mode);
	FUNC0(adjusted_mode, multiplier);

	return true;
}