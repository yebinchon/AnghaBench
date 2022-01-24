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
struct arizona_extcon_info {unsigned int last_jackdet; int micd_timeout; int detecting; int mic; int hpdet_done; int hpdet_retried; int num_micd_ranges; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  edev; int /*<<< orphan*/  input; TYPE_1__* micd_ranges; scalar_t__* hpdet_res; scalar_t__ num_hpdet_res; scalar_t__ micd_clamp; int /*<<< orphan*/  hpdet_work; scalar_t__ jack_flips; int /*<<< orphan*/  micd_timeout_work; struct arizona* arizona; } ;
struct TYPE_4__ {int micd_timeout; scalar_t__ jd_invert; int /*<<< orphan*/  hpdet_acc_id; } ;
struct arizona {int /*<<< orphan*/  regmap; TYPE_2__ pdata; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_AOD_IRQ_RAW_STATUS ; 
 int /*<<< orphan*/  ARIZONA_AOD_WKUP_AND_TRIG ; 
 int /*<<< orphan*/  ARIZONA_JACK_DETECT_DEBOUNCE ; 
 int ARIZONA_JD1_DB ; 
 int ARIZONA_JD1_FALL_TRIG_STS ; 
 int ARIZONA_JD1_RISE_TRIG_STS ; 
 unsigned int ARIZONA_JD1_STS ; 
 int ARIZONA_MICD_CLAMP_DB ; 
 int ARIZONA_MICD_CLAMP_FALL_TRIG_STS ; 
 int ARIZONA_MICD_CLAMP_RISE_TRIG_STS ; 
 unsigned int ARIZONA_MICD_CLAMP_STS ; 
 int FUNC0 (scalar_t__*) ; 
 int DEFAULT_MICD_TIMEOUT ; 
 scalar_t__ EXTCON_MECHANICAL ; 
 int HPDET_DEBOUNCE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__* arizona_cable ; 
 int /*<<< orphan*/  FUNC1 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct arizona_extcon_info*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static irqreturn_t FUNC20(int irq, void *data)
{
	struct arizona_extcon_info *info = data;
	struct arizona *arizona = info->arizona;
	unsigned int val, present, mask;
	bool cancelled_hp, cancelled_mic;
	int ret, i;

	cancelled_hp = FUNC4(&info->hpdet_work);
	cancelled_mic = FUNC4(&info->micd_timeout_work);

	FUNC13(info->dev);

	FUNC11(&info->lock);

	if (info->micd_clamp) {
		mask = ARIZONA_MICD_CLAMP_STS;
		present = 0;
	} else {
		mask = ARIZONA_JD1_STS;
		if (arizona->pdata.jd_invert)
			present = 0;
		else
			present = ARIZONA_JD1_STS;
	}

	ret = FUNC17(arizona->regmap, ARIZONA_AOD_IRQ_RAW_STATUS, &val);
	if (ret != 0) {
		FUNC6(arizona->dev, "Failed to read jackdet status: %d\n",
			ret);
		FUNC12(&info->lock);
		FUNC15(info->dev);
		return IRQ_NONE;
	}

	val &= mask;
	if (val == info->last_jackdet) {
		FUNC5(arizona->dev, "Suppressing duplicate JACKDET\n");
		if (cancelled_hp)
			FUNC16(system_power_efficient_wq,
					   &info->hpdet_work,
					   FUNC10(HPDET_DEBOUNCE));

		if (cancelled_mic) {
			int micd_timeout = info->micd_timeout;

			FUNC16(system_power_efficient_wq,
					   &info->micd_timeout_work,
					   FUNC10(micd_timeout));
		}

		goto out;
	}
	info->last_jackdet = val;

	if (info->last_jackdet == present) {
		FUNC5(arizona->dev, "Detected jack\n");
		ret = FUNC7(info->edev,
					      EXTCON_MECHANICAL, true);

		if (ret != 0)
			FUNC6(arizona->dev, "Mechanical report failed: %d\n",
				ret);

		if (!arizona->pdata.hpdet_acc_id) {
			info->detecting = true;
			info->mic = false;
			info->jack_flips = 0;

			FUNC2(info);
		} else {
			FUNC16(system_power_efficient_wq,
					   &info->hpdet_work,
					   FUNC10(HPDET_DEBOUNCE));
		}

		if (info->micd_clamp || !arizona->pdata.jd_invert)
			FUNC18(arizona->regmap,
					   ARIZONA_JACK_DETECT_DEBOUNCE,
					   ARIZONA_MICD_CLAMP_DB |
					   ARIZONA_JD1_DB, 0);
	} else {
		FUNC5(arizona->dev, "Detected jack removal\n");

		FUNC3(info);

		info->num_hpdet_res = 0;
		for (i = 0; i < FUNC0(info->hpdet_res); i++)
			info->hpdet_res[i] = 0;
		info->mic = false;
		info->hpdet_done = false;
		info->hpdet_retried = false;

		for (i = 0; i < info->num_micd_ranges; i++)
			FUNC8(info->input,
					 info->micd_ranges[i].key, 0);
		FUNC9(info->input);

		for (i = 0; i < FUNC0(arizona_cable) - 1; i++) {
			ret = FUNC7(info->edev,
					arizona_cable[i], false);
			if (ret != 0)
				FUNC6(arizona->dev,
					"Removal report failed: %d\n", ret);
		}

		/*
		 * If the jack was removed during a headphone detection we
		 * need to wait for the headphone detection to finish, as
		 * it can not be aborted. We don't want to be able to start
		 * a new headphone detection from a fresh insert until this
		 * one is finished.
		 */
		FUNC1(info);

		FUNC18(arizona->regmap,
				   ARIZONA_JACK_DETECT_DEBOUNCE,
				   ARIZONA_MICD_CLAMP_DB | ARIZONA_JD1_DB,
				   ARIZONA_MICD_CLAMP_DB | ARIZONA_JD1_DB);
	}

	if (arizona->pdata.micd_timeout)
		info->micd_timeout = arizona->pdata.micd_timeout;
	else
		info->micd_timeout = DEFAULT_MICD_TIMEOUT;

out:
	/* Clear trig_sts to make sure DCVDD is not forced up */
	FUNC19(arizona->regmap, ARIZONA_AOD_WKUP_AND_TRIG,
		     ARIZONA_MICD_CLAMP_FALL_TRIG_STS |
		     ARIZONA_MICD_CLAMP_RISE_TRIG_STS |
		     ARIZONA_JD1_FALL_TRIG_STS |
		     ARIZONA_JD1_RISE_TRIG_STS);

	FUNC12(&info->lock);

	FUNC14(info->dev);
	FUNC15(info->dev);

	return IRQ_HANDLED;
}