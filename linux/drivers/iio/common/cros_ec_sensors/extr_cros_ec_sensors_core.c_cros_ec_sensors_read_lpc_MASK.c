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
struct iio_dev {int dummy; } ;
struct cros_ec_sensors_core_state {struct cros_ec_device* ec; } ;
struct cros_ec_device {int dummy; } ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  EC_MEMMAP_ACC_STATUS ; 
 int EC_MEMMAP_ACC_STATUS_BUSY_BIT ; 
 int EC_MEMMAP_ACC_STATUS_SAMPLE_ID_MASK ; 
 int EIO ; 
 int FUNC0 (struct cros_ec_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct iio_dev*,unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cros_ec_sensors_core_state*) ; 
 struct cros_ec_sensors_core_state* FUNC3 (struct iio_dev*) ; 

int FUNC4(struct iio_dev *indio_dev,
			     unsigned long scan_mask, s16 *data)
{
	struct cros_ec_sensors_core_state *st = FUNC3(indio_dev);
	struct cros_ec_device *ec = st->ec;
	u8 samp_id = 0xff, status = 0;
	int ret, attempts = 0;

	/*
	 * Continually read all data from EC until the status byte after
	 * all reads reflects that the EC is not busy and the sample id
	 * matches the sample id from before all reads. This guarantees
	 * that data read in was not modified by the EC while reading.
	 */
	while ((status & (EC_MEMMAP_ACC_STATUS_BUSY_BIT |
			  EC_MEMMAP_ACC_STATUS_SAMPLE_ID_MASK)) != samp_id) {
		/* If we have tried to read too many times, return error. */
		if (attempts++ >= 5)
			return -EIO;

		/* Read status byte until EC is not busy. */
		ret = FUNC2(st);
		if (ret < 0)
			return ret;

		/*
		 * Store the current sample id so that we can compare to the
		 * sample id after reading the data.
		 */
		samp_id = ret & EC_MEMMAP_ACC_STATUS_SAMPLE_ID_MASK;

		/* Read all EC data, format it, and store it into data. */
		ret = FUNC1(indio_dev, scan_mask,
						       data);
		if (ret < 0)
			return ret;

		/* Read status byte. */
		ret = FUNC0(ec, EC_MEMMAP_ACC_STATUS,
						  &status);
		if (ret < 0)
			return ret;
	}

	return 0;
}