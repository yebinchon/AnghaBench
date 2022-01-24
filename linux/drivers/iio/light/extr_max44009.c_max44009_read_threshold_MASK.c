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
struct max44009_data {int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int IIO_EV_DIR_RISING ; 
 int MAX44009_THRESH_EXP_MASK ; 
 int MAX44009_THRESH_EXP_RSHIFT ; 
 int MAX44009_THRESH_MANT_LSHIFT ; 
 int MAX44009_THRESH_MANT_MASK ; 
 scalar_t__ MAX44009_UPPER_THR_MINIMUM ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct max44009_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				   enum iio_event_direction dir)
{
	struct max44009_data *data = FUNC1(indio_dev);
	int byte, reg;
	int mantissa, exponent;

	reg = FUNC2(dir);
	if (reg < 0)
		return reg;

	byte = FUNC0(data->client, reg);
	if (byte < 0)
		return byte;

	mantissa = byte & MAX44009_THRESH_MANT_MASK;
	mantissa <<= MAX44009_THRESH_MANT_LSHIFT;

	/*
	 * To get the upper threshold, always adds the minimum upper threshold
	 * value to the shifted byte value (see datasheet).
	 */
	if (dir == IIO_EV_DIR_RISING)
		mantissa += MAX44009_UPPER_THR_MINIMUM;

	/*
	 * Exponent is base 2 to the power of the threshold exponent byte
	 * value
	 */
	exponent = byte & MAX44009_THRESH_EXP_MASK;
	exponent >>= MAX44009_THRESH_EXP_RSHIFT;

	return (1 << exponent) * mantissa;
}