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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct adxl372_state {int bw; int /*<<< orphan*/  inact_time_ms; int /*<<< orphan*/  act_time_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 129 
#define  IIO_CHAN_INFO_SAMP_FREQ 128 
 int /*<<< orphan*/  adxl372_bw_freq_tbl ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  adxl372_samp_freq_tbl ; 
 int FUNC2 (struct adxl372_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adxl372_state*,int) ; 
 int FUNC4 (struct adxl372_state*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adxl372_state*,int) ; 
 struct adxl372_state* FUNC6 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long info)
{
	struct adxl372_state *st = FUNC6(indio_dev);
	int odr_index, bw_index, ret;

	switch (info) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		odr_index = FUNC1(adxl372_samp_freq_tbl,
					FUNC0(adxl372_samp_freq_tbl),
					val);
		ret = FUNC5(st, odr_index);
		if (ret < 0)
			return ret;
		/*
		 * The timer period depends on the ODR selected.
		 * At 3200 Hz and below, it is 6.6 ms; at 6400 Hz, it is 3.3 ms
		 */
		ret = FUNC2(st, st->act_time_ms);
		if (ret < 0)
			return ret;
		/*
		 * The timer period depends on the ODR selected.
		 * At 3200 Hz and below, it is 26 ms; at 6400 Hz, it is 13 ms
		 */
		ret = FUNC4(st, st->inact_time_ms);
		if (ret < 0)
			return ret;
		/*
		 * The maximum bandwidth is constrained to at most half of
		 * the ODR to ensure that the Nyquist criteria is not violated
		 */
		if (st->bw > odr_index)
			ret = FUNC3(st, odr_index);

		return ret;
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		bw_index = FUNC1(adxl372_bw_freq_tbl,
					FUNC0(adxl372_bw_freq_tbl),
					val);
		return FUNC3(st, bw_index);
	default:
		return -EINVAL;
	}
}