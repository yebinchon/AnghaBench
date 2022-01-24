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
struct cm36651_data {int /*<<< orphan*/  lock; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int CM36651_CMD_PROX_EV_DIS ; 
 int CM36651_CMD_PROX_EV_EN ; 
 int EINVAL ; 
 int FUNC0 (struct cm36651_data*,int) ; 
 struct cm36651_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
					const struct iio_chan_spec *chan,
					enum iio_event_type type,
					enum iio_event_direction dir,
					int state)
{
	struct cm36651_data *cm36651 = FUNC1(indio_dev);
	int cmd, ret = -EINVAL;

	FUNC2(&cm36651->lock);

	cmd = state ? CM36651_CMD_PROX_EV_EN : CM36651_CMD_PROX_EV_DIS;
	ret = FUNC0(cm36651, cmd);

	FUNC3(&cm36651->lock);

	return ret;
}