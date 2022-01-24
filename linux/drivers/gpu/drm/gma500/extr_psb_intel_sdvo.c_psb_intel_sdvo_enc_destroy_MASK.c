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
struct psb_intel_sdvo {int /*<<< orphan*/  ddc; int /*<<< orphan*/ * sdvo_lvds_fixed_mode; } ;
struct drm_encoder {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct psb_intel_sdvo* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct psb_intel_sdvo *psb_intel_sdvo = FUNC3(encoder);

	if (psb_intel_sdvo->sdvo_lvds_fixed_mode != NULL)
		FUNC0(encoder->dev,
				 psb_intel_sdvo->sdvo_lvds_fixed_mode);

	FUNC2(&psb_intel_sdvo->ddc);
	FUNC1(encoder);
}