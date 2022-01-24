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
struct mipi_dsi_device {int lanes; } ;
struct adv7511 {int /*<<< orphan*/  regmap_cec; scalar_t__ use_timing_gen; struct mipi_dsi_device* dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adv7511*) ; 
 int /*<<< orphan*/  adv7533_cec_fixed_registers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

void FUNC4(struct adv7511 *adv)
{
	struct mipi_dsi_device *dsi = adv->dsi;

	if (adv->use_timing_gen)
		FUNC1(adv);

	/* set number of dsi lanes */
	FUNC3(adv->regmap_cec, 0x1c, dsi->lanes << 4);

	if (adv->use_timing_gen) {
		/* reset internal timing generator */
		FUNC3(adv->regmap_cec, 0x27, 0xcb);
		FUNC3(adv->regmap_cec, 0x27, 0x8b);
		FUNC3(adv->regmap_cec, 0x27, 0xcb);
	} else {
		/* disable internal timing generator */
		FUNC3(adv->regmap_cec, 0x27, 0x0b);
	}

	/* enable hdmi */
	FUNC3(adv->regmap_cec, 0x03, 0x89);
	/* disable test mode */
	FUNC3(adv->regmap_cec, 0x55, 0x00);

	FUNC2(adv->regmap_cec, adv7533_cec_fixed_registers,
			      FUNC0(adv7533_cec_fixed_registers));
}