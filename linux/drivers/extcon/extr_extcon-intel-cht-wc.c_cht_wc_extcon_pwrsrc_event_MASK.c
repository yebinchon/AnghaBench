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
struct cht_wc_extcon_data {int usb_host; unsigned int previous_cable; int /*<<< orphan*/  edev; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_WC_PWRSRC_STS ; 
 int CHT_WC_PWRSRC_VBUS ; 
 unsigned int EXTCON_NONE ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int INTEL_USB_ID_GND ; 
 int INTEL_USB_RID_A ; 
 int /*<<< orphan*/  MUX_SEL_PMIC ; 
 int /*<<< orphan*/  MUX_SEL_SOC ; 
 int /*<<< orphan*/  FUNC0 (struct cht_wc_extcon_data*,int) ; 
 int FUNC1 (struct cht_wc_extcon_data*,int) ; 
 int FUNC2 (struct cht_wc_extcon_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cht_wc_extcon_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cht_wc_extcon_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cht_wc_extcon_data*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC9(struct cht_wc_extcon_data *ext)
{
	int ret, pwrsrc_sts, id;
	unsigned int cable = EXTCON_NONE;
	/* Ignore errors in host mode, as the 5v boost converter is on then */
	bool ignore_get_charger_errors = ext->usb_host;

	ret = FUNC8(ext->regmap, CHT_WC_PWRSRC_STS, &pwrsrc_sts);
	if (ret) {
		FUNC6(ext->dev, "Error reading pwrsrc status: %d\n", ret);
		return;
	}

	id = FUNC2(ext, pwrsrc_sts);
	if (id == INTEL_USB_ID_GND) {
		FUNC0(ext, false);
		FUNC3(ext, true);

		/* The 5v boost causes a false VBUS / SDP detect, skip */
		goto charger_det_done;
	}

	FUNC3(ext, false);
	FUNC0(ext, true);

	/* Plugged into a host/charger or not connected? */
	if (!(pwrsrc_sts & CHT_WC_PWRSRC_VBUS)) {
		/* Route D+ and D- to PMIC for future charger detection */
		FUNC4(ext, MUX_SEL_PMIC);
		goto set_state;
	}

	ret = FUNC1(ext, ignore_get_charger_errors);
	if (ret >= 0)
		cable = ret;

charger_det_done:
	/* Route D+ and D- to SoC for the host or gadget controller */
	FUNC4(ext, MUX_SEL_SOC);

set_state:
	if (cable != ext->previous_cable) {
		FUNC5(ext, cable, true);
		FUNC5(ext, ext->previous_cable, false);
		ext->previous_cable = cable;
	}

	ext->usb_host = ((id == INTEL_USB_ID_GND) || (id == INTEL_USB_RID_A));
	FUNC7(ext->edev, EXTCON_USB_HOST, ext->usb_host);
}