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
struct iio_chan_spec {scalar_t__ type; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_EV_DIR_EITHER ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 scalar_t__ IIO_TEMP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iio_chan_spec* FUNC3 (struct iio_dev*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct iio_dev *indio_dev, unsigned int event)
{
	const struct iio_chan_spec *chan;

	/* Temperature threshold error, we don't handle this yet */
	if (event == 0)
		return;

	chan = FUNC3(indio_dev, event);

	if (chan->type == IIO_TEMP) {
		/*
		 * The temperature channel only supports over-temperature
		 * events.
		 */
		FUNC2(indio_dev,
			FUNC0(chan->type, chan->channel,
				IIO_EV_TYPE_THRESH, IIO_EV_DIR_RISING),
			FUNC1(indio_dev));
	} else {
		/*
		 * For other channels we don't know whether it is a upper or
		 * lower threshold event. Userspace will have to check the
		 * channel value if it wants to know.
		 */
		FUNC2(indio_dev,
			FUNC0(chan->type, chan->channel,
				IIO_EV_TYPE_THRESH, IIO_EV_DIR_EITHER),
			FUNC1(indio_dev));
	}
}