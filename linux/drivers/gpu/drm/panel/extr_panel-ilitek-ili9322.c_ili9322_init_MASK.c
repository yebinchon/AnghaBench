#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ili9322 {scalar_t__ vreg1out; scalar_t__ vcom_amplitude; scalar_t__ vcom_high; int* gamma; int input; int /*<<< orphan*/  dev; TYPE_1__* conf; int /*<<< orphan*/  regmap; } ;
struct drm_panel {int dummy; } ;
struct TYPE_2__ {int syncmode; int /*<<< orphan*/  flip_vertical; int /*<<< orphan*/  flip_horizontal; scalar_t__ vsync_active_high; scalar_t__ hsync_active_high; scalar_t__ de_active_high; scalar_t__ dclk_active_high; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ ILI9322_ENTRY ; 
 int ILI9322_ENTRY_AUTODETECT ; 
 int ILI9322_ENTRY_HDIR ; 
 int ILI9322_ENTRY_VDIR ; 
 scalar_t__ ILI9322_GAMMA_1 ; 
 scalar_t__ ILI9322_GLOBAL_RESET ; 
 int ILI9322_GLOBAL_RESET_ASSERT ; 
 scalar_t__ ILI9322_IF_CTRL ; 
 int ILI9322_IF_CTRL_LINE_INVERSION ; 
 scalar_t__ ILI9322_POL ; 
 int ILI9322_POL_DCLK ; 
 int ILI9322_POL_DE ; 
 int ILI9322_POL_HSYNC ; 
 int ILI9322_POL_VSYNC ; 
 scalar_t__ ILI9322_VCOM_AMP ; 
 scalar_t__ ILI9322_VCOM_HIGH ; 
 scalar_t__ ILI9322_VREG1_VOLTAGE ; 
 scalar_t__ U8_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * ili9322_inputs ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel, struct ili9322 *ili)
{
	u8 reg;
	int ret;
	int i;

	/* Reset display */
	ret = FUNC3(ili->regmap, ILI9322_GLOBAL_RESET,
			   ILI9322_GLOBAL_RESET_ASSERT);
	if (ret) {
		FUNC1(ili->dev, "can't issue GRESET (%d)\n", ret);
		return ret;
	}

	/* Set up the main voltage regulator */
	if (ili->vreg1out != U8_MAX) {
		ret = FUNC3(ili->regmap, ILI9322_VREG1_VOLTAGE,
				   ili->vreg1out);
		if (ret) {
			FUNC1(ili->dev, "can't set up VREG1OUT (%d)\n", ret);
			return ret;
		}
	}

	if (ili->vcom_amplitude != U8_MAX) {
		ret = FUNC3(ili->regmap, ILI9322_VCOM_AMP,
				   ili->vcom_amplitude);
		if (ret) {
			FUNC1(ili->dev,
				"can't set up VCOM amplitude (%d)\n", ret);
			return ret;
		}
	};

	if (ili->vcom_high != U8_MAX) {
		ret = FUNC3(ili->regmap, ILI9322_VCOM_HIGH,
				   ili->vcom_high);
		if (ret) {
			FUNC1(ili->dev, "can't set up VCOM high (%d)\n", ret);
			return ret;
		}
	};

	/* Set up gamma correction */
	for (i = 0; i < FUNC0(ili->gamma); i++) {
		ret = FUNC3(ili->regmap, ILI9322_GAMMA_1 + i,
				   ili->gamma[i]);
		if (ret) {
			FUNC1(ili->dev,
				"can't write gamma V%d to 0x%02x (%d)\n",
				i + 1, ILI9322_GAMMA_1 + i, ret);
			return ret;
		}
	}

	/*
	 * Polarity and inverted color order for RGB input.
	 * None of this applies in the BT.656 mode.
	 */
	reg = 0;
	if (ili->conf->dclk_active_high)
		reg = ILI9322_POL_DCLK;
	if (ili->conf->de_active_high)
		reg |= ILI9322_POL_DE;
	if (ili->conf->hsync_active_high)
		reg |= ILI9322_POL_HSYNC;
	if (ili->conf->vsync_active_high)
		reg |= ILI9322_POL_VSYNC;
	ret = FUNC3(ili->regmap, ILI9322_POL, reg);
	if (ret) {
		FUNC1(ili->dev, "can't write POL register (%d)\n", ret);
		return ret;
	}

	/*
	 * Set up interface control.
	 * This is not used in the BT.656 mode (no H/Vsync or DE signals).
	 */
	reg = ili->conf->syncmode;
	reg |= ILI9322_IF_CTRL_LINE_INVERSION;
	ret = FUNC3(ili->regmap, ILI9322_IF_CTRL, reg);
	if (ret) {
		FUNC1(ili->dev, "can't write IF CTRL register (%d)\n", ret);
		return ret;
	}

	/* Set up the input mode */
	reg = (ili->input << 4);
	/* These are inverted, setting to 1 is the default, clearing flips */
	if (!ili->conf->flip_horizontal)
		reg |= ILI9322_ENTRY_HDIR;
	if (!ili->conf->flip_vertical)
		reg |= ILI9322_ENTRY_VDIR;
	reg |= ILI9322_ENTRY_AUTODETECT;
	ret = FUNC3(ili->regmap, ILI9322_ENTRY, reg);
	if (ret) {
		FUNC1(ili->dev, "can't write ENTRY reg (%d)\n", ret);
		return ret;
	}
	FUNC2(ili->dev, "display is in %s mode, syncmode %02x\n",
		 ili9322_inputs[ili->input],
		 ili->conf->syncmode);

	FUNC2(ili->dev, "initialized display\n");

	return 0;
}