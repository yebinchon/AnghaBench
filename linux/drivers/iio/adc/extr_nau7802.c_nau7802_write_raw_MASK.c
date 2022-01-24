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
struct nau7802_state {int* scale_avail; int sample_rate; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; int /*<<< orphan*/  conversion_count; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NAU7802_REG_CTRL2 ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nau7802_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int* nau7802_sample_freq_avail ; 
 int FUNC6 (struct nau7802_state*,int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	struct nau7802_state *st = FUNC3(indio_dev);
	int i, ret;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		for (i = 0; i < FUNC0(st->scale_avail); i++)
			if (val2 == st->scale_avail[i])
				return FUNC6(st, i);

		break;

	case IIO_CHAN_INFO_SAMP_FREQ:
		for (i = 0; i < FUNC0(nau7802_sample_freq_avail); i++)
			if (val == nau7802_sample_freq_avail[i]) {
				FUNC4(&st->lock);
				st->sample_rate = i;
				st->conversion_count = 0;
				ret = FUNC2(st->client,
					NAU7802_REG_CTRL2,
					FUNC1(st->sample_rate));
				FUNC5(&st->lock);
				return ret;
			}

		break;

	default:
		break;
	}

	return -EINVAL;
}