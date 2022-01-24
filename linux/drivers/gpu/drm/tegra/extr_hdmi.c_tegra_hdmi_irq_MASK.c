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
struct tegra_hdmi {int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_NV_PDISP_INT_STATUS ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0 ; 
 int INT_CODEC_SCRATCH0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK ; 
 int SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_hdmi*) ; 
 int FUNC5 (struct tegra_hdmi*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_hdmi*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_hdmi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	struct tegra_hdmi *hdmi = data;
	u32 value;
	int err;

	value = FUNC5(hdmi, HDMI_NV_PDISP_INT_STATUS);
	FUNC8(hdmi, value, HDMI_NV_PDISP_INT_STATUS);

	if (value & INT_CODEC_SCRATCH0) {
		unsigned int format;
		u32 value;

		value = FUNC5(hdmi, HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0);

		if (value & SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID) {
			format = value & SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK;

			FUNC0(format, &hdmi->format);

			err = FUNC6(hdmi);
			if (err < 0) {
				FUNC2(hdmi);
				FUNC1(hdmi);
			} else {
				FUNC7(hdmi);
				FUNC4(hdmi);
				FUNC3(hdmi);
			}
		} else {
			FUNC2(hdmi);
			FUNC1(hdmi);
		}
	}

	return IRQ_HANDLED;
}