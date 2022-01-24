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
struct psb_intel_sdvo_dtd {int dummy; } ;
struct psb_intel_sdvo {int /*<<< orphan*/  attached_output; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct psb_intel_sdvo_dtd*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC1 (struct psb_intel_sdvo*,struct psb_intel_sdvo_dtd*) ; 
 int /*<<< orphan*/  FUNC2 (struct psb_intel_sdvo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct psb_intel_sdvo *psb_intel_sdvo,
					const struct drm_display_mode *mode)
{
	struct psb_intel_sdvo_dtd output_dtd;

	if (!FUNC2(psb_intel_sdvo,
					  psb_intel_sdvo->attached_output))
		return false;

	FUNC0(&output_dtd, mode);
	if (!FUNC1(psb_intel_sdvo, &output_dtd))
		return false;

	return true;
}