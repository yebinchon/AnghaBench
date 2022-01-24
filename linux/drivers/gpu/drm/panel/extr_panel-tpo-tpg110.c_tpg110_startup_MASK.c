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
typedef  int u8 ;
struct tpg110_panel_mode {int magic; } ;
struct tpg110 {int /*<<< orphan*/  dev; struct tpg110_panel_mode const* panel_mode; int /*<<< orphan*/  grestb; } ;

/* Variables and functions */
 int FUNC0 (struct tpg110_panel_mode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int ENODEV ; 
 int /*<<< orphan*/  TPG110_CHIPID ; 
 int /*<<< orphan*/  TPG110_CTRL1 ; 
 int /*<<< orphan*/  TPG110_CTRL2 ; 
 int TPG110_CTRL2_RES_PM_CTRL ; 
#define  TPG110_RES_400X240_D 133 
#define  TPG110_RES_480X272 132 
#define  TPG110_RES_480X272_D 131 
#define  TPG110_RES_480X640 130 
#define  TPG110_RES_640X480 129 
#define  TPG110_RES_800X480 128 
 int TPG110_RES_MASK ; 
 int /*<<< orphan*/  TPG110_TEST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tpg110_panel_mode* tpg110_modes ; 
 int FUNC5 (struct tpg110*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tpg110*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct tpg110 *tpg)
{
	u8 val;
	int i;

	/* De-assert the reset signal */
	FUNC4(tpg->grestb, 0);
	FUNC7(1000, 2000);
	FUNC1(tpg->dev, "de-asserted GRESTB\n");

	/* Test display communication */
	FUNC6(tpg, TPG110_TEST, 0x55);
	val = FUNC5(tpg, TPG110_TEST);
	if (val != 0x55) {
		FUNC2(tpg->dev, "failed communication test\n");
		return -ENODEV;
	}

	val = FUNC5(tpg, TPG110_CHIPID);
	FUNC3(tpg->dev, "TPG110 chip ID: %d version: %d\n",
		 val >> 4, val & 0x0f);

	/* Show display resolution */
	val = FUNC5(tpg, TPG110_CTRL1);
	val &= TPG110_RES_MASK;
	switch (val) {
	case TPG110_RES_400X240_D:
		FUNC3(tpg->dev,
			 "IN 400x240 RGB -> OUT 800x480 RGB (dual scan)\n");
		break;
	case TPG110_RES_480X272_D:
		FUNC3(tpg->dev,
			 "IN 480x272 RGB -> OUT 800x480 RGB (dual scan)\n");
		break;
	case TPG110_RES_480X640:
		FUNC3(tpg->dev, "480x640 RGB\n");
		break;
	case TPG110_RES_480X272:
		FUNC3(tpg->dev, "480x272 RGB\n");
		break;
	case TPG110_RES_640X480:
		FUNC3(tpg->dev, "640x480 RGB\n");
		break;
	case TPG110_RES_800X480:
		FUNC3(tpg->dev, "800x480 RGB\n");
		break;
	default:
		FUNC2(tpg->dev, "ILLEGAL RESOLUTION 0x%02x\n", val);
		break;
	}

	/* From the producer side, this is the same resolution */
	if (val == TPG110_RES_480X272_D)
		val = TPG110_RES_480X272;

	for (i = 0; i < FUNC0(tpg110_modes); i++) {
		const struct tpg110_panel_mode *pm;

		pm = &tpg110_modes[i];
		if (pm->magic == val) {
			tpg->panel_mode = pm;
			break;
		}
	}
	if (i == FUNC0(tpg110_modes)) {
		FUNC2(tpg->dev, "unsupported mode (%02x) detected\n",
			val);
		return -ENODEV;
	}

	val = FUNC5(tpg, TPG110_CTRL2);
	FUNC3(tpg->dev, "resolution and standby is controlled by %s\n",
		 (val & TPG110_CTRL2_RES_PM_CTRL) ? "software" : "hardware");
	/* Take control over resolution and standby */
	val |= TPG110_CTRL2_RES_PM_CTRL;
	FUNC6(tpg, TPG110_CTRL2, val);

	return 0;
}