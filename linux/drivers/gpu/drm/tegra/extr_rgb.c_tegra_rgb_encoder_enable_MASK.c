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
typedef  int u32 ;
struct tegra_rgb {int /*<<< orphan*/  dc; } ;
struct tegra_output {scalar_t__ panel; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DC_DISP_DATA_ENABLE_OPTIONS ; 
 int /*<<< orphan*/  DC_DISP_DISP_INTERFACE_CONTROL ; 
 int /*<<< orphan*/  DC_DISP_SHIFT_CLOCK_OPTIONS ; 
 int DE_CONTROL_NORMAL ; 
 int DE_SELECT_ACTIVE ; 
 int DISP_ALIGNMENT_MSB ; 
 int DISP_DATA_FORMAT_DF1P1C ; 
 int DISP_ORDER_RED_BLUE ; 
 int LHS_OUTPUT_POLARITY_LOW ; 
 int LVS_OUTPUT_POLARITY_LOW ; 
 int SC0_H_QUALIFIER_NONE ; 
 int SC1_H_QUALIFIER_NONE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct tegra_output* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  rgb_enable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct tegra_rgb* FUNC9 (struct tegra_output*) ; 

__attribute__((used)) static void FUNC10(struct drm_encoder *encoder)
{
	struct tegra_output *output = FUNC4(encoder);
	struct tegra_rgb *rgb = FUNC9(output);
	u32 value;

	if (output->panel)
		FUNC3(output->panel);

	FUNC7(rgb->dc, rgb_enable, FUNC0(rgb_enable));

	value = DE_SELECT_ACTIVE | DE_CONTROL_NORMAL;
	FUNC8(rgb->dc, value, DC_DISP_DATA_ENABLE_OPTIONS);

	/* XXX: parameterize? */
	value = FUNC6(rgb->dc, FUNC1(1));
	value &= ~LVS_OUTPUT_POLARITY_LOW;
	value &= ~LHS_OUTPUT_POLARITY_LOW;
	FUNC8(rgb->dc, value, FUNC1(1));

	/* XXX: parameterize? */
	value = DISP_DATA_FORMAT_DF1P1C | DISP_ALIGNMENT_MSB |
		DISP_ORDER_RED_BLUE;
	FUNC8(rgb->dc, value, DC_DISP_DISP_INTERFACE_CONTROL);

	/* XXX: parameterize? */
	value = SC0_H_QUALIFIER_NONE | SC1_H_QUALIFIER_NONE;
	FUNC8(rgb->dc, value, DC_DISP_SHIFT_CLOCK_OPTIONS);

	FUNC5(rgb->dc);

	if (output->panel)
		FUNC2(output->panel);
}