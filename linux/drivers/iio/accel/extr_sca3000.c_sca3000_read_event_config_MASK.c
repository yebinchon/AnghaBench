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
struct sca3000_state {int* rx; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; size_t address; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_MOD_X 131 
#define  IIO_MOD_X_AND_Y_AND_Z 130 
#define  IIO_MOD_Y 129 
#define  IIO_MOD_Z 128 
 int /*<<< orphan*/  SCA3000_REG_CTRL_SEL_MD_CTRL ; 
 int /*<<< orphan*/  SCA3000_REG_MODE_ADDR ; 
 int SCA3000_REG_MODE_FREE_FALL_DETECT ; 
 int SCA3000_REG_MODE_MEAS_MODE_MOT_DET ; 
 int SCA3000_REG_MODE_MODE_MASK ; 
 struct sca3000_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int** sca3000_addresses ; 
 int FUNC3 (struct sca3000_state*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				     const struct iio_chan_spec *chan,
				     enum iio_event_type type,
				     enum iio_event_direction dir)
{
	struct sca3000_state *st = FUNC0(indio_dev);
	int ret;
	/* read current value of mode register */
	FUNC1(&st->lock);

	ret = FUNC4(st, SCA3000_REG_MODE_ADDR, 1);
	if (ret)
		goto error_ret;

	switch (chan->channel2) {
	case IIO_MOD_X_AND_Y_AND_Z:
		ret = !!(st->rx[0] & SCA3000_REG_MODE_FREE_FALL_DETECT);
		break;
	case IIO_MOD_X:
	case IIO_MOD_Y:
	case IIO_MOD_Z:
		/*
		 * Motion detection mode cannot run at the same time as
		 * acceleration data being read.
		 */
		if ((st->rx[0] & SCA3000_REG_MODE_MODE_MASK)
		    != SCA3000_REG_MODE_MEAS_MODE_MOT_DET) {
			ret = 0;
		} else {
			ret = FUNC3(st,
						SCA3000_REG_CTRL_SEL_MD_CTRL);
			if (ret < 0)
				goto error_ret;
			/* only supporting logical or's for now */
			ret = !!(ret & sca3000_addresses[chan->address][2]);
		}
		break;
	default:
		ret = -EINVAL;
	}

error_ret:
	FUNC2(&st->lock);

	return ret;
}