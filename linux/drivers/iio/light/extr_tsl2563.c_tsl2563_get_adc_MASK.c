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
typedef  int u16 ;
struct tsl2563_chip {int /*<<< orphan*/  poweroff_work; int /*<<< orphan*/  int_enabled; TYPE_1__* gainlevel; void* data1; void* data0; scalar_t__ suspended; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gaintime; } ;

/* Variables and functions */
 int HZ ; 
 int TSL2563_CMD ; 
 int TSL2563_REG_DATA0LOW ; 
 int TSL2563_REG_DATA1LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct tsl2563_chip*,int) ; 
 int FUNC4 (struct tsl2563_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct tsl2563_chip*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct tsl2563_chip*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tsl2563_chip*) ; 

__attribute__((used)) static int FUNC9(struct tsl2563_chip *chip)
{
	struct i2c_client *client = chip->client;
	u16 adc0, adc1;
	int retry = 1;
	int ret = 0;

	if (chip->suspended)
		goto out;

	if (!chip->int_enabled) {
		FUNC0(&chip->poweroff_work);

		if (!FUNC5(chip)) {
			ret = FUNC7(chip, 1);
			if (ret)
				goto out;
			ret = FUNC4(chip);
			if (ret)
				goto out;
			FUNC8(chip);
		}
	}

	while (retry) {
		ret = FUNC1(client,
				TSL2563_CMD | TSL2563_REG_DATA0LOW);
		if (ret < 0)
			goto out;
		adc0 = ret;

		ret = FUNC1(client,
				TSL2563_CMD | TSL2563_REG_DATA1LOW);
		if (ret < 0)
			goto out;
		adc1 = ret;

		retry = FUNC3(chip, adc0);
	}

	chip->data0 = FUNC6(adc0, chip->gainlevel->gaintime);
	chip->data1 = FUNC6(adc1, chip->gainlevel->gaintime);

	if (!chip->int_enabled)
		FUNC2(&chip->poweroff_work, 5 * HZ);

	ret = 0;
out:
	return ret;
}