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
struct timespec64 {int dummy; } ;
struct ina2xx_chip_info {int /*<<< orphan*/  allow_async_readout; } ;
struct iio_dev {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (struct ina2xx_chip_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ina2xx_chip_info* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec64*,int) ; 
 struct timespec64 FUNC8 (struct timespec64,struct timespec64) ; 
 int /*<<< orphan*/  FUNC9 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(void *data)
{
	struct iio_dev *indio_dev = data;
	struct ina2xx_chip_info *chip = FUNC2(indio_dev);
	int sampling_us = FUNC0(chip);
	int ret;
	struct timespec64 next, now, delta;
	s64 delay_us;

	/*
	 * Poll a bit faster than the chip internal Fs, in case
	 * we wish to sync with the conversion ready flag.
	 */
	if (!chip->allow_async_readout)
		sampling_us -= 200;

	FUNC6(&next);

	do {
		while (!chip->allow_async_readout) {
			ret = FUNC3(indio_dev);
			if (ret < 0)
				return ret;

			/*
			 * If the conversion was not yet finished,
			 * reset the reference timestamp.
			 */
			if (ret == 0)
				FUNC6(&next);
			else
				break;
		}

		ret = FUNC4(indio_dev);
		if (ret < 0)
			return ret;

		FUNC6(&now);

		/*
		 * Advance the timestamp for the next poll by one sampling
		 * interval, and sleep for the remainder (next - now)
		 * In case "next" has already passed, the interval is added
		 * multiple times, i.e. samples are dropped.
		 */
		do {
			FUNC7(&next, 1000 * sampling_us);
			delta = FUNC8(next, now);
			delay_us = FUNC1(FUNC9(&delta), 1000);
		} while (delay_us <= 0);

		FUNC10(delay_us, (delay_us * 3) >> 1);

	} while (!FUNC5());

	return 0;
}