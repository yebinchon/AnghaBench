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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/ * channels; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct envelope {int comp_interval; scalar_t__ comp_irq; int comp_irq_trigger; int comp_irq_trigger_inv; int /*<<< orphan*/  dac_max; int /*<<< orphan*/  dac; int /*<<< orphan*/  comp_timeout; int /*<<< orphan*/  done; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  comp_lock; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int IIO_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_HIGH ; 
 int IRQF_TRIGGER_LOW ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct iio_dev* FUNC6 (struct device*,int) ; 
 int FUNC7 (struct device*,struct iio_dev*) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct envelope*) ; 
 int /*<<< orphan*/  envelope_detector_comp_isr ; 
 int /*<<< orphan*/  envelope_detector_iio_channel ; 
 int /*<<< orphan*/  envelope_detector_info ; 
 int /*<<< orphan*/  envelope_detector_timeout ; 
 int FUNC9 (int /*<<< orphan*/ ,int*) ; 
 struct envelope* FUNC10 (struct iio_dev*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct iio_dev *indio_dev;
	struct envelope *env;
	enum iio_chan_type type;
	int ret;

	indio_dev = FUNC6(dev, sizeof(*env));
	if (!indio_dev)
		return -ENOMEM;

	FUNC16(pdev, indio_dev);
	env = FUNC10(indio_dev);
	env->comp_interval = 50; /* some sensible default? */

	FUNC17(&env->comp_lock);
	FUNC14(&env->read_lock);
	FUNC12(&env->done);
	FUNC0(&env->comp_timeout, envelope_detector_timeout);

	indio_dev->name = FUNC4(dev);
	indio_dev->dev.parent = dev;
	indio_dev->dev.of_node = dev->of_node;
	indio_dev->info = &envelope_detector_info;
	indio_dev->channels = &envelope_detector_iio_channel;
	indio_dev->num_channels = 1;

	env->dac = FUNC5(dev, "dac");
	if (FUNC1(env->dac)) {
		if (FUNC2(env->dac) != -EPROBE_DEFER)
			FUNC3(dev, "failed to get dac input channel\n");
		return FUNC2(env->dac);
	}

	env->comp_irq = FUNC15(pdev, "comp");
	if (env->comp_irq < 0)
		return env->comp_irq;

	ret = FUNC8(dev, env->comp_irq, envelope_detector_comp_isr,
			       0, "envelope-detector", env);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "failed to request interrupt\n");
		return ret;
	}
	env->comp_irq_trigger = FUNC13(env->comp_irq);
	if (env->comp_irq_trigger & IRQF_TRIGGER_RISING)
		env->comp_irq_trigger_inv |= IRQF_TRIGGER_FALLING;
	if (env->comp_irq_trigger & IRQF_TRIGGER_FALLING)
		env->comp_irq_trigger_inv |= IRQF_TRIGGER_RISING;
	if (env->comp_irq_trigger & IRQF_TRIGGER_HIGH)
		env->comp_irq_trigger_inv |= IRQF_TRIGGER_LOW;
	if (env->comp_irq_trigger & IRQF_TRIGGER_LOW)
		env->comp_irq_trigger_inv |= IRQF_TRIGGER_HIGH;

	ret = FUNC9(env->dac, &type);
	if (ret < 0)
		return ret;

	if (type != IIO_VOLTAGE) {
		FUNC3(dev, "dac is of the wrong type\n");
		return -EINVAL;
	}

	ret = FUNC11(env->dac, &env->dac_max);
	if (ret < 0) {
		FUNC3(dev, "dac does not indicate its raw maximum value\n");
		return ret;
	}

	return FUNC7(dev, indio_dev);
}