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
typedef  int /*<<< orphan*/  u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct cc10001_adc_device {unsigned int eoc_delay_ns; int /*<<< orphan*/  shared; } ;

/* Variables and functions */
 unsigned int CC10001_MAX_POLL_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cc10001_adc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cc10001_adc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cc10001_adc_device*,int /*<<< orphan*/ ) ; 
 struct cc10001_adc_device* FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static u16 FUNC5(struct iio_dev *indio_dev,
					struct iio_chan_spec const *chan)
{
	struct cc10001_adc_device *adc_dev = FUNC4(indio_dev);
	unsigned int delay_ns;
	u16 val;

	if (!adc_dev->shared)
		FUNC2(adc_dev);

	/* Calculate delay step for eoc and sampled data */
	delay_ns = adc_dev->eoc_delay_ns / CC10001_MAX_POLL_COUNT;

	FUNC3(adc_dev, chan->channel);

	val = FUNC0(indio_dev, chan->channel, delay_ns);

	if (!adc_dev->shared)
		FUNC1(adc_dev);

	return val;
}