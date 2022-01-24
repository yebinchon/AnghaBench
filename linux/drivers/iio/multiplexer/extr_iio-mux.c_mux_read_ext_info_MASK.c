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
struct mux {TYPE_1__* ext_info; int /*<<< orphan*/  parent; struct iio_chan_spec const* chan; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mux*) ; 
 scalar_t__ FUNC1 (struct mux*,int) ; 
 struct mux* FUNC2 (struct iio_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct iio_dev *indio_dev, uintptr_t private,
				 struct iio_chan_spec const *chan, char *buf)
{
	struct mux *mux = FUNC2(indio_dev);
	int idx = chan - mux->chan;
	ssize_t ret;

	ret = FUNC1(mux, idx);
	if (ret < 0)
		return ret;

	ret = FUNC3(mux->parent,
					mux->ext_info[private].name,
					buf);

	FUNC0(mux);

	return ret;
}