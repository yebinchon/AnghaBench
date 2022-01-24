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
struct iio_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_CHAN_INFO_SCALE ; 
 int FUNC0 (struct iio_channel*,int*,int*,int /*<<< orphan*/ ) ; 

int FUNC1(struct iio_channel *chan, int *val, int *val2)
{
	return FUNC0(chan, val, val2, IIO_CHAN_INFO_SCALE);
}