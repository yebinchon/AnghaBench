#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int shift; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; TYPE_1__ scan_type; } ;
struct ad5755_state {TYPE_2__* chip_info; } ;
struct TYPE_4__ {unsigned int calib_shift; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 130 
#define  IIO_CHAN_INFO_CALIBSCALE 129 
#define  IIO_CHAN_INFO_RAW 128 

__attribute__((used)) static int FUNC6(struct ad5755_state *st,
	struct iio_chan_spec const *chan, long info, bool write,
	unsigned int *reg, unsigned int *shift, unsigned int *offset)
{
	switch (info) {
	case IIO_CHAN_INFO_RAW:
		if (write)
			*reg = FUNC3(chan->address);
		else
			*reg = FUNC0(chan->address);
		*shift = chan->scan_type.shift;
		*offset = 0;
		break;
	case IIO_CHAN_INFO_CALIBBIAS:
		if (write)
			*reg = FUNC5(chan->address);
		else
			*reg = FUNC2(chan->address);
		*shift = st->chip_info->calib_shift;
		*offset = 32768;
		break;
	case IIO_CHAN_INFO_CALIBSCALE:
		if (write)
			*reg =  FUNC4(chan->address);
		else
			*reg =  FUNC1(chan->address);
		*shift = st->chip_info->calib_shift;
		*offset = 0;
		break;
	default:
		return -EINVAL;
	}

	return 0;
}