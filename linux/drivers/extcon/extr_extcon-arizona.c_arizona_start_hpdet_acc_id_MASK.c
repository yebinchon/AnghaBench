#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct arizona_extcon_info {int hpdet_active; int /*<<< orphan*/  edev; TYPE_1__* micd_modes; int /*<<< orphan*/  dev; struct arizona* arizona; } ;
struct TYPE_4__ {int hpdet_channel; scalar_t__ hpdet_acc_id_line; } ;
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; TYPE_2__ pdata; } ;
struct TYPE_3__ {int src; } ;

/* Variables and functions */
 int ARIZONA_ACCDET_MODE_MASK ; 
 int ARIZONA_ACCDET_MODE_MIC ; 
 int ARIZONA_ACCDET_SRC ; 
 int /*<<< orphan*/  ARIZONA_ACCESSORY_DETECT_MODE_1 ; 
 int /*<<< orphan*/  ARIZONA_HEADPHONE_DETECT_1 ; 
 int ARIZONA_HP_POLL ; 
 int /*<<< orphan*/  EXTCON_JACK_HEADPHONE ; 
 int /*<<< orphan*/  FUNC0 (struct arizona_extcon_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct arizona_extcon_info*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct arizona_extcon_info *info)
{
	struct arizona *arizona = info->arizona;
	int hp_reading = 32;
	bool mic;
	int ret;

	FUNC2(arizona->dev, "Starting identification via HPDET\n");

	/* Make sure we keep the device enabled during the measurement */
	FUNC5(info->dev);

	info->hpdet_active = true;

	FUNC0(info, true);

	ret = FUNC6(arizona->regmap,
				 ARIZONA_ACCESSORY_DETECT_MODE_1,
				 ARIZONA_ACCDET_SRC | ARIZONA_ACCDET_MODE_MASK,
				 info->micd_modes[0].src |
				 arizona->pdata.hpdet_channel);
	if (ret != 0) {
		FUNC3(arizona->dev, "Failed to set HPDET mode: %d\n", ret);
		goto err;
	}

	if (arizona->pdata.hpdet_acc_id_line) {
		ret = FUNC6(arizona->regmap,
					 ARIZONA_HEADPHONE_DETECT_1,
					 ARIZONA_HP_POLL, ARIZONA_HP_POLL);
		if (ret != 0) {
			FUNC3(arizona->dev,
				"Can't start HPDETL measurement: %d\n",
				ret);
			goto err;
		}
	} else {
		FUNC1(info, &hp_reading, &mic);
	}

	return;

err:
	FUNC6(arizona->regmap, ARIZONA_ACCESSORY_DETECT_MODE_1,
			   ARIZONA_ACCDET_MODE_MASK, ARIZONA_ACCDET_MODE_MIC);

	/* Just report headphone */
	ret = FUNC4(info->edev, EXTCON_JACK_HEADPHONE, true);
	if (ret != 0)
		FUNC3(arizona->dev, "Failed to report headphone: %d\n", ret);

	info->hpdet_active = false;
}