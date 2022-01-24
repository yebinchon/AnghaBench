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
struct adv7511 {scalar_t__ type; int /*<<< orphan*/  i2c_cec; int /*<<< orphan*/  regmap_cec; int /*<<< orphan*/  i2c_main; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7511_CEC_I2C_ADDR_DEFAULT ; 
 scalar_t__ ADV7533 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adv7511_cec_regmap_config ; 
 int FUNC2 (struct adv7511*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct adv7511*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct adv7511 *adv)
{
	int ret;

	adv->i2c_cec = FUNC4(adv->i2c_main, "cec",
						ADV7511_CEC_I2C_ADDR_DEFAULT);
	if (FUNC0(adv->i2c_cec))
		return FUNC1(adv->i2c_cec);
	FUNC5(adv->i2c_cec, adv);

	adv->regmap_cec = FUNC3(adv->i2c_cec,
					&adv7511_cec_regmap_config);
	if (FUNC0(adv->regmap_cec)) {
		ret = FUNC1(adv->regmap_cec);
		goto err;
	}

	if (adv->type == ADV7533) {
		ret = FUNC2(adv);
		if (ret)
			goto err;
	}

	return 0;
err:
	FUNC6(adv->i2c_cec);
	return ret;
}