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
struct TYPE_3__ {scalar_t__ encoder; } ;
struct adv7511 {int edid_read; int /*<<< orphan*/  wq; TYPE_2__* i2c_main; int /*<<< orphan*/  hpd_work; TYPE_1__ bridge; int /*<<< orphan*/  regmap; } ;
struct TYPE_4__ {scalar_t__ irq; } ;

/* Variables and functions */
 unsigned int ADV7511_INT0_EDID_READY ; 
 unsigned int ADV7511_INT0_HPD ; 
 unsigned int ADV7511_INT1_DDC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct adv7511*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct adv7511 *adv7511, bool process_hpd)
{
	unsigned int irq0, irq1;
	int ret;

	ret = FUNC2(adv7511->regmap, FUNC0(0), &irq0);
	if (ret < 0)
		return ret;

	ret = FUNC2(adv7511->regmap, FUNC0(1), &irq1);
	if (ret < 0)
		return ret;

	FUNC3(adv7511->regmap, FUNC0(0), irq0);
	FUNC3(adv7511->regmap, FUNC0(1), irq1);

	if (process_hpd && irq0 & ADV7511_INT0_HPD && adv7511->bridge.encoder)
		FUNC4(&adv7511->hpd_work);

	if (irq0 & ADV7511_INT0_EDID_READY || irq1 & ADV7511_INT1_DDC_ERROR) {
		adv7511->edid_read = true;

		if (adv7511->i2c_main->irq)
			FUNC5(&adv7511->wq);
	}

#ifdef CONFIG_DRM_I2C_ADV7511_CEC
	adv7511_cec_irq_process(adv7511, irq1);
#endif

	return 0;
}