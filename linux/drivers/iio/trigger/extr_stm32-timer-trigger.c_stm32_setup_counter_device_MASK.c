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
struct stm32_timer_trigger {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct iio_dev {int num_channels; TYPE_1__ dev; int /*<<< orphan*/ * channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  INDIO_HARDWARE_TRIGGERED ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct iio_dev* FUNC1 (struct device*,int) ; 
 int FUNC2 (struct device*,struct iio_dev*) ; 
 struct stm32_timer_trigger* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  stm32_trigger_channel ; 
 int /*<<< orphan*/  stm32_trigger_info ; 

__attribute__((used)) static struct stm32_timer_trigger *FUNC4(struct device *dev)
{
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC1(dev,
					  sizeof(struct stm32_timer_trigger));
	if (!indio_dev)
		return NULL;

	indio_dev->name = FUNC0(dev);
	indio_dev->dev.parent = dev;
	indio_dev->info = &stm32_trigger_info;
	indio_dev->modes = INDIO_HARDWARE_TRIGGERED;
	indio_dev->num_channels = 1;
	indio_dev->channels = &stm32_trigger_channel;
	indio_dev->dev.of_node = dev->of_node;

	ret = FUNC2(dev, indio_dev);
	if (ret)
		return NULL;

	return FUNC3(indio_dev);
}