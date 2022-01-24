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
struct tsl2563_chip {int intr; int int_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  poweroff_work; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int HZ ; 
 int TSL2563_CMD ; 
 int TSL2563_REG_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct tsl2563_chip* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct tsl2563_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct tsl2563_chip*) ; 
 int FUNC8 (struct tsl2563_chip*,int) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, enum iio_event_type type,
	enum iio_event_direction dir, int state)
{
	struct tsl2563_chip *chip = FUNC2(indio_dev);
	int ret = 0;

	FUNC3(&chip->lock);
	if (state && !(chip->intr & 0x30)) {
		chip->intr &= ~0x30;
		chip->intr |= 0x10;
		/* ensure the chip is actually on */
		FUNC0(&chip->poweroff_work);
		if (!FUNC7(chip)) {
			ret = FUNC8(chip, 1);
			if (ret)
				goto out;
			ret = FUNC6(chip);
			if (ret)
				goto out;
		}
		ret = FUNC1(chip->client,
						TSL2563_CMD | TSL2563_REG_INT,
						chip->intr);
		chip->int_enabled = true;
	}

	if (!state && (chip->intr & 0x30)) {
		chip->intr &= ~0x30;
		ret = FUNC1(chip->client,
						TSL2563_CMD | TSL2563_REG_INT,
						chip->intr);
		chip->int_enabled = false;
		/* now the interrupt is not enabled, we can go to sleep */
		FUNC5(&chip->poweroff_work, 5 * HZ);
	}
out:
	FUNC4(&chip->lock);

	return ret;
}