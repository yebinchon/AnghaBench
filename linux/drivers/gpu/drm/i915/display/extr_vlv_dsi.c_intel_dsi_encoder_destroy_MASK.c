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
struct intel_dsi {scalar_t__ gpio_panel; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 struct intel_dsi* FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder)
{
	struct intel_dsi *intel_dsi = FUNC0(encoder);

	/* dispose of the gpios */
	if (intel_dsi->gpio_panel)
		FUNC1(intel_dsi->gpio_panel);

	FUNC2(encoder);
}