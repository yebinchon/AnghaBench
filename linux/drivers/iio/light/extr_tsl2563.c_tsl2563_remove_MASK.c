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
struct tsl2563_chip {int intr; int /*<<< orphan*/  client; int /*<<< orphan*/  poweroff_work; int /*<<< orphan*/  int_enabled; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int TSL2563_CMD ; 
 int TSL2563_REG_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct tsl2563_chip* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct iio_dev* FUNC5 (struct tsl2563_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct tsl2563_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct tsl2563_chip *chip = FUNC2(client);
	struct iio_dev *indio_dev = FUNC5(chip);

	FUNC4(indio_dev);
	if (!chip->int_enabled)
		FUNC0(&chip->poweroff_work);
	/* Ensure that interrupts are disabled - then flush any bottom halves */
	chip->intr &= ~0x30;
	FUNC3(chip->client, TSL2563_CMD | TSL2563_REG_INT,
				  chip->intr);
	FUNC1();
	FUNC6(chip, 0);

	return 0;
}