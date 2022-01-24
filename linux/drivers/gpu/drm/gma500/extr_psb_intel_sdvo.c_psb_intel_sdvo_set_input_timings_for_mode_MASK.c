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
struct psb_intel_sdvo {int /*<<< orphan*/  input_dtd; } ;
struct drm_display_mode {int clock; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psb_intel_sdvo*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct psb_intel_sdvo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct psb_intel_sdvo*) ; 

__attribute__((used)) static bool
FUNC5(struct psb_intel_sdvo *psb_intel_sdvo,
					const struct drm_display_mode *mode,
					struct drm_display_mode *adjusted_mode)
{
	/* Reset the input timing to the screen. Assume always input 0. */
	if (!FUNC4(psb_intel_sdvo))
		return false;

	if (!FUNC1(psb_intel_sdvo,
						      mode->clock / 10,
						      mode->hdisplay,
						      mode->vdisplay))
		return false;

	if (!FUNC3(psb_intel_sdvo,
						   &psb_intel_sdvo->input_dtd))
		return false;

	FUNC2(adjusted_mode, &psb_intel_sdvo->input_dtd);

	FUNC0(adjusted_mode, 0);
	return true;
}