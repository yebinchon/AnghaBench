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
struct arizona_extcon_info {int* hpdet_res; int num_hpdet_res; int hpdet_retried; int detecting; TYPE_2__* micd_modes; int /*<<< orphan*/  dev; struct arizona* arizona; } ;
struct TYPE_3__ {int hpdet_id_gpio; scalar_t__ hpdet_acc_id; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; TYPE_1__ pdata; } ;
struct TYPE_4__ {int src; } ;

/* Variables and functions */
 int ARIZONA_ACCDET_MODE_HPR ; 
 int ARIZONA_ACCDET_MODE_MASK ; 
 int ARIZONA_ACCDET_SRC ; 
 int /*<<< orphan*/  ARIZONA_ACCESSORY_DETECT_MODE_1 ; 
 int /*<<< orphan*/  ARIZONA_HEADPHONE_DETECT_1 ; 
 int ARIZONA_HPDET_MAX ; 
 int ARIZONA_HP_POLL ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct arizona_extcon_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct arizona_extcon_info *info, int *reading,
			       bool *mic)
{
	struct arizona *arizona = info->arizona;
	int id_gpio = arizona->pdata.hpdet_id_gpio;

	/*
	 * If we're using HPDET for accessory identification we need
	 * to take multiple measurements, step through them in sequence.
	 */
	if (arizona->pdata.hpdet_acc_id) {
		info->hpdet_res[info->num_hpdet_res++] = *reading;

		/* Only check the mic directly if we didn't already ID it */
		if (id_gpio && info->num_hpdet_res == 1) {
			FUNC1(arizona->dev, "Measuring mic\n");

			FUNC4(arizona->regmap,
					   ARIZONA_ACCESSORY_DETECT_MODE_1,
					   ARIZONA_ACCDET_MODE_MASK |
					   ARIZONA_ACCDET_SRC,
					   ARIZONA_ACCDET_MODE_HPR |
					   info->micd_modes[0].src);

			FUNC2(id_gpio, 1);

			FUNC4(arizona->regmap,
					   ARIZONA_HEADPHONE_DETECT_1,
					   ARIZONA_HP_POLL, ARIZONA_HP_POLL);
			return -EAGAIN;
		}

		/* OK, got both.  Now, compare... */
		FUNC1(arizona->dev, "HPDET measured %d %d\n",
			info->hpdet_res[0], info->hpdet_res[1]);

		/* Take the headphone impedance for the main report */
		*reading = info->hpdet_res[0];

		/* Sometimes we get false readings due to slow insert */
		if (*reading >= ARIZONA_HPDET_MAX && !info->hpdet_retried) {
			FUNC1(arizona->dev, "Retrying high impedance\n");
			info->num_hpdet_res = 0;
			info->hpdet_retried = true;
			FUNC0(info);
			FUNC3(info->dev);
			return -EAGAIN;
		}

		/*
		 * If we measure the mic as high impedance
		 */
		if (!id_gpio || info->hpdet_res[1] > 50) {
			FUNC1(arizona->dev, "Detected mic\n");
			*mic = true;
			info->detecting = true;
		} else {
			FUNC1(arizona->dev, "Detected headphone\n");
		}

		/* Make sure everything is reset back to the real polarity */
		FUNC4(arizona->regmap,
				   ARIZONA_ACCESSORY_DETECT_MODE_1,
				   ARIZONA_ACCDET_SRC,
				   info->micd_modes[0].src);
	}

	return 0;
}