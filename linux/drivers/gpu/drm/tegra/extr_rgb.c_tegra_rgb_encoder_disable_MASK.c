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
struct tegra_rgb {int /*<<< orphan*/  dc; } ;
struct tegra_output {scalar_t__ panel; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct tegra_output* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  rgb_disable ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_rgb* FUNC6 (struct tegra_output*) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct tegra_output *output = FUNC3(encoder);
	struct tegra_rgb *rgb = FUNC6(output);

	if (output->panel)
		FUNC1(output->panel);

	FUNC5(rgb->dc, rgb_disable, FUNC0(rgb_disable));
	FUNC4(rgb->dc);

	if (output->panel)
		FUNC2(output->panel);
}