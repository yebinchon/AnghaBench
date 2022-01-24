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
struct arizona_extcon_info {int hpdet_active; scalar_t__ mic; int /*<<< orphan*/  edev; int /*<<< orphan*/  dev; scalar_t__ hpdet_done; struct arizona* arizona; } ;
struct TYPE_2__ {int /*<<< orphan*/  hpdet_channel; } ;
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; TYPE_1__ pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_ACCDET_MODE_MASK ; 
 int /*<<< orphan*/  ARIZONA_ACCDET_MODE_MIC ; 
 int /*<<< orphan*/  ARIZONA_ACCESSORY_DETECT_MODE_1 ; 
 int /*<<< orphan*/  ARIZONA_HEADPHONE_DETECT_1 ; 
 int /*<<< orphan*/  ARIZONA_HP_POLL ; 
 int /*<<< orphan*/  EXTCON_JACK_HEADPHONE ; 
 int /*<<< orphan*/  FUNC0 (struct arizona_extcon_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct arizona_extcon_info *info)
{
	struct arizona *arizona = info->arizona;
	int ret;

	if (info->hpdet_done)
		return;

	FUNC3(arizona->dev, "Starting HPDET\n");

	/* Make sure we keep the device enabled during the measurement */
	FUNC6(info->dev);

	info->hpdet_active = true;

	if (info->mic)
		FUNC2(info);

	FUNC0(info, true);

	ret = FUNC7(arizona->regmap,
				 ARIZONA_ACCESSORY_DETECT_MODE_1,
				 ARIZONA_ACCDET_MODE_MASK,
				 arizona->pdata.hpdet_channel);
	if (ret != 0) {
		FUNC4(arizona->dev, "Failed to set HPDET mode: %d\n", ret);
		goto err;
	}

	ret = FUNC7(arizona->regmap, ARIZONA_HEADPHONE_DETECT_1,
				 ARIZONA_HP_POLL, ARIZONA_HP_POLL);
	if (ret != 0) {
		FUNC4(arizona->dev, "Can't start HPDETL measurement: %d\n",
			ret);
		goto err;
	}

	return;

err:
	FUNC7(arizona->regmap, ARIZONA_ACCESSORY_DETECT_MODE_1,
			   ARIZONA_ACCDET_MODE_MASK, ARIZONA_ACCDET_MODE_MIC);

	/* Just report headphone */
	ret = FUNC5(info->edev, EXTCON_JACK_HEADPHONE, true);
	if (ret != 0)
		FUNC4(arizona->dev, "Failed to report headphone: %d\n", ret);

	if (info->mic)
		FUNC1(info);

	info->hpdet_active = false;
}