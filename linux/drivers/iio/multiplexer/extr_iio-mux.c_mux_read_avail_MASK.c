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
struct mux {int /*<<< orphan*/  parent; struct iio_chan_spec const* chan; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (struct mux*) ; 
 int FUNC1 (struct mux*,int) ; 
 struct mux* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int const**,int*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			  struct iio_chan_spec const *chan,
			  const int **vals, int *type, int *length,
			  long mask)
{
	struct mux *mux = FUNC2(indio_dev);
	int idx = chan - mux->chan;
	int ret;

	ret = FUNC1(mux, idx);
	if (ret < 0)
		return ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		*type = IIO_VAL_INT;
		ret = FUNC3(mux->parent, vals, length);
		break;

	default:
		ret = -EINVAL;
	}

	FUNC0(mux);

	return ret;
}