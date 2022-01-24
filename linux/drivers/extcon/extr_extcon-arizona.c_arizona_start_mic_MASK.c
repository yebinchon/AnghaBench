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
struct arizona_extcon_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  micvdd; scalar_t__ detecting; scalar_t__ micd_reva; struct arizona* arizona; } ;
struct TYPE_2__ {scalar_t__ micd_software_compare; } ;
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; TYPE_1__ pdata; } ;

/* Variables and functions */
 unsigned int ARIZONA_ACCDET_MODE_ADC ; 
 int /*<<< orphan*/  ARIZONA_ACCDET_MODE_MASK ; 
 unsigned int ARIZONA_ACCDET_MODE_MIC ; 
 int /*<<< orphan*/  ARIZONA_ACCESSORY_DETECT_MODE_1 ; 
 int /*<<< orphan*/  ARIZONA_MICD_ENA ; 
 int /*<<< orphan*/  ARIZONA_MIC_DETECT_1 ; 
 int /*<<< orphan*/  FUNC0 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct arizona_extcon_info *info)
{
	struct arizona *arizona = info->arizona;
	bool change;
	int ret;
	unsigned int mode;

	/* Microphone detection can't use idle mode */
	FUNC2(info->dev);

	if (info->detecting) {
		ret = FUNC7(info->micvdd, false);
		if (ret != 0) {
			FUNC1(arizona->dev,
				"Failed to regulate MICVDD: %d\n",
				ret);
		}
	}

	ret = FUNC9(info->micvdd);
	if (ret != 0) {
		FUNC1(arizona->dev, "Failed to enable MICVDD: %d\n",
			ret);
	}

	if (info->micd_reva) {
		FUNC6(arizona->regmap, 0x80, 0x3);
		FUNC6(arizona->regmap, 0x294, 0);
		FUNC6(arizona->regmap, 0x80, 0x0);
	}

	if (info->detecting && arizona->pdata.micd_software_compare)
		mode = ARIZONA_ACCDET_MODE_ADC;
	else
		mode = ARIZONA_ACCDET_MODE_MIC;

	FUNC4(arizona->regmap,
			   ARIZONA_ACCESSORY_DETECT_MODE_1,
			   ARIZONA_ACCDET_MODE_MASK, mode);

	FUNC0(info);

	ret = FUNC5(arizona->regmap, ARIZONA_MIC_DETECT_1,
				       ARIZONA_MICD_ENA, ARIZONA_MICD_ENA,
				       &change);
	if (ret < 0) {
		FUNC1(arizona->dev, "Failed to enable micd: %d\n", ret);
	} else if (!change) {
		FUNC8(info->micvdd);
		FUNC3(info->dev);
	}
}