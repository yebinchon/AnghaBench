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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_output {int dummy; } ;
struct tegra_hdmi {int /*<<< orphan*/  dev; scalar_t__ stereo; int /*<<< orphan*/  dvi; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_DISP_DISP_WIN_OPTIONS ; 
 int /*<<< orphan*/  HDMI_ENABLE ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_INT_ENABLE ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_INT_MASK ; 
 struct tegra_output* FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_hdmi* FUNC10 (struct tegra_output*) ; 
 struct tegra_dc* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct drm_encoder *encoder)
{
	struct tegra_output *output = FUNC0(encoder);
	struct tegra_dc *dc = FUNC11(encoder->crtc);
	struct tegra_hdmi *hdmi = FUNC10(output);
	u32 value;

	/*
	 * The following accesses registers of the display controller, so make
	 * sure it's only executed when the output is attached to one.
	 */
	if (dc) {
		value = FUNC3(dc, DC_DISP_DISP_WIN_OPTIONS);
		value &= ~HDMI_ENABLE;
		FUNC4(dc, value, DC_DISP_DISP_WIN_OPTIONS);

		FUNC2(dc);
	}

	if (!hdmi->dvi) {
		if (hdmi->stereo)
			FUNC8(hdmi);

		FUNC6(hdmi);
		FUNC7(hdmi);
		FUNC5(hdmi);
	}

	FUNC9(hdmi, 0, HDMI_NV_PDISP_INT_ENABLE);
	FUNC9(hdmi, 0, HDMI_NV_PDISP_INT_MASK);

	FUNC1(hdmi->dev);
}