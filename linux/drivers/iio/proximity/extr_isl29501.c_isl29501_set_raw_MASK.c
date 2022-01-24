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
struct isl29501_private {int dummy; } ;
struct iio_chan_spec {int type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CURRENT 128 
 int /*<<< orphan*/  REG_EMITTER_DAC ; 
 int FUNC0 (struct isl29501_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct isl29501_private *isl29501,
			    const struct iio_chan_spec *chan,
			    int raw)
{
	switch (chan->type) {
	case IIO_CURRENT:
		return FUNC0(isl29501, REG_EMITTER_DAC, raw);
	default:
		return -EINVAL;
	}
}