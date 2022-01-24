#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nau7802_state {size_t sample_rate; int vref_mv; TYPE_1__* client; int /*<<< orphan*/  lock; int /*<<< orphan*/  conversion_count; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int NAU7802_CTRL1_GAINS_BITS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NAU7802_CTRL2_CHS_BIT ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  NAU7802_REG_CTRL1 ; 
 int /*<<< orphan*/  NAU7802_REG_CTRL2 ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct nau7802_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 int FUNC8 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 int* nau7802_sample_freq_avail ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct nau7802_state *st = FUNC4(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC5(&st->lock);
		/*
		 * Select the channel to use
		 *   - Channel 1 is value 0 in the CHS register
		 *   - Channel 2 is value 1 in the CHS register
		 */
		ret = FUNC2(st->client, NAU7802_REG_CTRL2);
		if (ret < 0) {
			FUNC6(&st->lock);
			return ret;
		}

		if (((ret & NAU7802_CTRL2_CHS_BIT) && !chan->channel) ||
				(!(ret & NAU7802_CTRL2_CHS_BIT) &&
				 chan->channel)) {
			st->conversion_count = 0;
			ret = FUNC3(st->client,
					NAU7802_REG_CTRL2,
					FUNC0(chan->channel) |
					FUNC1(st->sample_rate));

			if (ret < 0) {
				FUNC6(&st->lock);
				return ret;
			}
		}

		if (st->client->irq)
			ret = FUNC7(indio_dev, chan, val);
		else
			ret = FUNC8(indio_dev, chan, val);

		FUNC6(&st->lock);
		return ret;

	case IIO_CHAN_INFO_SCALE:
		ret = FUNC2(st->client, NAU7802_REG_CTRL1);
		if (ret < 0)
			return ret;

		/*
		 * We have 24 bits of signed data, that means 23 bits of data
		 * plus the sign bit
		 */
		*val = st->vref_mv;
		*val2 = 23 + (ret & NAU7802_CTRL1_GAINS_BITS);

		return IIO_VAL_FRACTIONAL_LOG2;

	case IIO_CHAN_INFO_SAMP_FREQ:
		*val =  nau7802_sample_freq_avail[st->sample_rate];
		*val2 = 0;
		return IIO_VAL_INT;

	default:
		break;
	}

	return -EINVAL;
}