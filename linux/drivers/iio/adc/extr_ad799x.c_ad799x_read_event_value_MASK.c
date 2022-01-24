#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct TYPE_2__ {int shift; scalar_t__ realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct ad799x_state {int /*<<< orphan*/  client; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC1 (struct iio_chan_spec const*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad799x_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
				    const struct iio_chan_spec *chan,
				    enum iio_event_type type,
				    enum iio_event_direction dir,
				    enum iio_event_info info,
				    int *val, int *val2)
{
	int ret;
	struct ad799x_state *st = FUNC3(indio_dev);

	FUNC4(&indio_dev->mlock);
	ret = FUNC2(st->client,
		FUNC1(chan, dir, info));
	FUNC5(&indio_dev->mlock);
	if (ret < 0)
		return ret;
	*val = (ret >> chan->scan_type.shift) &
		FUNC0(chan->scan_type.realbits - 1, 0);

	return IIO_VAL_INT;
}