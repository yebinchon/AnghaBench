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
struct nau7802_state {scalar_t__ conversion_count; scalar_t__ sample_rate; int last_value; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int IIO_VAL_INT ; 
 scalar_t__ NAU7802_MIN_CONVERSIONS ; 
 int NAU7802_PUCTRL_CR_BIT ; 
 int /*<<< orphan*/  NAU7802_REG_PUCTRL ; 
 scalar_t__ NAU7802_SAMP_FREQ_320 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nau7802_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct nau7802_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct nau7802_state*) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan,
			int *val)
{
	struct nau7802_state *st = FUNC1(indio_dev);
	int ret;

	FUNC5(st);

	/* read registers to ensure we flush everything */
	ret = FUNC4(st);
	if (ret < 0)
		return ret;

	/*
	 * Because there is actually only one ADC for both channels, we have to
	 * wait for enough conversions to happen before getting a significant
	 * value when changing channels and the values are far appart.
	 */
	do {
		ret = FUNC0(st->client, NAU7802_REG_PUCTRL);
		if (ret < 0)
			return ret;

		while (!(ret & NAU7802_PUCTRL_CR_BIT)) {
			if (st->sample_rate != NAU7802_SAMP_FREQ_320)
				FUNC3(20);
			else
				FUNC2(4);
			ret = FUNC0(st->client,
							NAU7802_REG_PUCTRL);
			if (ret < 0)
				return ret;
		}

		ret = FUNC4(st);
		if (ret < 0)
			return ret;
		if (st->conversion_count < NAU7802_MIN_CONVERSIONS)
			st->conversion_count++;
	} while (st->conversion_count < NAU7802_MIN_CONVERSIONS);

	*val = st->last_value;

	return IIO_VAL_INT;
}