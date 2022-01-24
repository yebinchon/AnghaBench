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
struct arizona_extcon_info {int hpdet_active; int hpdet_done; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ mic; int /*<<< orphan*/  edev; struct arizona* arizona; } ;
struct TYPE_2__ {int hpdet_id_gpio; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; TYPE_1__ pdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ARIZONA_ACCDET_MODE_MASK ; 
 int /*<<< orphan*/  ARIZONA_ACCDET_MODE_MIC ; 
 int /*<<< orphan*/  ARIZONA_ACCESSORY_DETECT_MODE_1 ; 
 int /*<<< orphan*/  ARIZONA_HEADPHONE_DETECT_1 ; 
 int ARIZONA_HP_IMPEDANCE_RANGE_MASK ; 
 int ARIZONA_HP_POLL ; 
 int EAGAIN ; 
 unsigned int EXTCON_JACK_HEADPHONE ; 
 unsigned int EXTCON_JACK_LINE_OUT ; 
 int /*<<< orphan*/  EXTCON_MECHANICAL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct arizona_extcon_info*,int) ; 
 int FUNC1 (struct arizona_extcon_info*,int*,int*) ; 
 int FUNC2 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *data)
{
	struct arizona_extcon_info *info = data;
	struct arizona *arizona = info->arizona;
	int id_gpio = arizona->pdata.hpdet_id_gpio;
	unsigned int report = EXTCON_JACK_HEADPHONE;
	int ret, reading;
	bool mic = false;

	FUNC10(&info->lock);

	/* If we got a spurious IRQ for some reason then ignore it */
	if (!info->hpdet_active) {
		FUNC6(arizona->dev, "Spurious HPDET IRQ\n");
		FUNC11(&info->lock);
		return IRQ_NONE;
	}

	/* If the cable was removed while measuring ignore the result */
	ret = FUNC7(info->edev, EXTCON_MECHANICAL);
	if (ret < 0) {
		FUNC5(arizona->dev, "Failed to check cable state: %d\n",
			ret);
		goto out;
	} else if (!ret) {
		FUNC4(arizona->dev, "Ignoring HPDET for removed cable\n");
		goto done;
	}

	ret = FUNC2(info);
	if (ret == -EAGAIN)
		goto out;
	else if (ret < 0)
		goto done;
	reading = ret;

	/* Reset back to starting range */
	FUNC13(arizona->regmap,
			   ARIZONA_HEADPHONE_DETECT_1,
			   ARIZONA_HP_IMPEDANCE_RANGE_MASK | ARIZONA_HP_POLL,
			   0);

	ret = FUNC1(info, &reading, &mic);
	if (ret == -EAGAIN)
		goto out;
	else if (ret < 0)
		goto done;

	/* Report high impedence cables as line outputs */
	if (reading >= 5000)
		report = EXTCON_JACK_LINE_OUT;
	else
		report = EXTCON_JACK_HEADPHONE;

	ret = FUNC8(info->edev, report, true);
	if (ret != 0)
		FUNC5(arizona->dev, "Failed to report HP/line: %d\n",
			ret);

done:
	/* Reset back to starting range */
	FUNC13(arizona->regmap,
			   ARIZONA_HEADPHONE_DETECT_1,
			   ARIZONA_HP_IMPEDANCE_RANGE_MASK | ARIZONA_HP_POLL,
			   0);

	FUNC0(info, false);

	if (id_gpio)
		FUNC9(id_gpio, 0);

	/* Revert back to MICDET mode */
	FUNC13(arizona->regmap,
			   ARIZONA_ACCESSORY_DETECT_MODE_1,
			   ARIZONA_ACCDET_MODE_MASK, ARIZONA_ACCDET_MODE_MIC);

	/* If we have a mic then reenable MICDET */
	if (mic || info->mic)
		FUNC3(info);

	if (info->hpdet_active) {
		FUNC12(info->dev);
		info->hpdet_active = false;
	}

	info->hpdet_done = true;

out:
	FUNC11(&info->lock);

	return IRQ_HANDLED;
}