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
struct iio_chan_spec {scalar_t__ type; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
 int IIO_EV_INFO_VALUE ; 
 scalar_t__ IIO_LIGHT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct max44009_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
				      const struct iio_chan_spec *chan,
				      enum iio_event_type type,
				      enum iio_event_direction dir,
				      enum iio_event_info info,
				      int val, int val2)
{
	struct max44009_data *data = FUNC1(indio_dev);
	int reg, threshold;

	if (info != IIO_EV_INFO_VALUE || chan->type != IIO_LIGHT)
		return -EINVAL;

	threshold = FUNC3(val, val2);
	if (threshold < 0)
		return threshold;

	reg = FUNC2(dir);
	if (reg < 0)
		return reg;

	return FUNC0(data->client, reg, threshold);
}