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
typedef  int u8 ;
struct tsl2563_chip {int high_thres; int low_thres; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int IIO_EV_DIR_RISING ; 
 int TSL2563_CMD ; 
 int TSL2563_REG_HIGHLOW ; 
 int TSL2563_REG_LOWLOW ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct tsl2563_chip* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, enum iio_event_type type,
	enum iio_event_direction dir, enum iio_event_info info, int val,
	int val2)
{
	struct tsl2563_chip *chip = FUNC1(indio_dev);
	int ret;
	u8 address;

	if (dir == IIO_EV_DIR_RISING)
		address = TSL2563_REG_HIGHLOW;
	else
		address = TSL2563_REG_LOWLOW;
	FUNC2(&chip->lock);
	ret = FUNC0(chip->client, TSL2563_CMD | address,
					val & 0xFF);
	if (ret)
		goto error_ret;
	ret = FUNC0(chip->client,
					TSL2563_CMD | (address + 1),
					(val >> 8) & 0xFF);
	if (dir == IIO_EV_DIR_RISING)
		chip->high_thres = val;
	else
		chip->low_thres = val;

error_ret:
	FUNC3(&chip->lock);

	return ret;
}