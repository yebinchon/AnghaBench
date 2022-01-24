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
struct iio_chan_spec {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
#define  IIO_CHAN_INFO_CALIBBIAS 130 
#define  IIO_CHAN_INFO_CALIBSCALE 129 
#define  IIO_CHAN_INFO_RAW 128 

__attribute__((used)) static unsigned int FUNC3(struct iio_chan_spec const *chan,
	long info)
{
	switch (info) {
	case IIO_CHAN_INFO_RAW:
		return FUNC0(chan->address);
	case IIO_CHAN_INFO_CALIBBIAS:
		return FUNC2(chan->address);
	case IIO_CHAN_INFO_CALIBSCALE:
		return FUNC1(chan->address);
	default:
		break;
	}

	return 0;
}