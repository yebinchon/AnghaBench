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
struct iio_channel {scalar_t__ indio_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_channel*) ; 

void FUNC2(struct iio_channel *channels)
{
	struct iio_channel *chan = &channels[0];

	while (chan->indio_dev) {
		FUNC0(chan->indio_dev);
		chan++;
	}
	FUNC1(channels);
}