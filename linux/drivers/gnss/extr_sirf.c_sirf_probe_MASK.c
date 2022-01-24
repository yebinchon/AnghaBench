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
struct sirf_data {int active; int irq; struct gnss_device* gdev; void* vcc; void* on_off; void* wakeup; void* lna; int /*<<< orphan*/  power_wait; int /*<<< orphan*/  serdev_mutex; int /*<<< orphan*/  gdev_mutex; struct serdev_device* serdev; } ;
struct device {int dummy; } ;
struct serdev_device {struct device dev; } ;
struct gnss_device {int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GNSS_TYPE_SIRF ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  SIRF_BOOT_DELAY ; 
 int /*<<< orphan*/  SIRF_REPORT_CYCLE ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct sirf_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct sirf_data*) ; 
 struct gnss_device* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct gnss_device*) ; 
 int FUNC10 (struct gnss_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct gnss_device*,struct sirf_data*) ; 
 int FUNC12 (void*) ; 
 int FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int FUNC21 (void*) ; 
 int FUNC22 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct sirf_data*) ; 
 int /*<<< orphan*/  FUNC23 (struct serdev_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct serdev_device*,struct sirf_data*) ; 
 int /*<<< orphan*/  sirf_gnss_ops ; 
 int FUNC25 (struct serdev_device*) ; 
 int FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct sirf_data*) ; 
 int FUNC29 (struct sirf_data*) ; 
 int /*<<< orphan*/  sirf_serdev_ops ; 
 int FUNC30 (struct sirf_data*,int) ; 
 int /*<<< orphan*/  sirf_wakeup_handler ; 

__attribute__((used)) static int FUNC31(struct serdev_device *serdev)
{
	struct device *dev = &serdev->dev;
	struct gnss_device *gdev;
	struct sirf_data *data;
	int ret;

	data = FUNC5(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	gdev = FUNC8(dev);
	if (!gdev)
		return -ENOMEM;

	gdev->type = GNSS_TYPE_SIRF;
	gdev->ops = &sirf_gnss_ops;
	FUNC11(gdev, data);

	data->serdev = serdev;
	data->gdev = gdev;

	FUNC16(&data->gdev_mutex);
	FUNC16(&data->serdev_mutex);
	FUNC14(&data->power_wait);

	FUNC24(serdev, data);
	FUNC23(serdev, &sirf_serdev_ops);

	ret = FUNC25(serdev);
	if (ret)
		goto err_put_device;

	data->vcc = FUNC6(dev, "vcc");
	if (FUNC1(data->vcc)) {
		ret = FUNC2(data->vcc);
		goto err_put_device;
	}

	data->lna = FUNC6(dev, "lna");
	if (FUNC1(data->lna)) {
		ret = FUNC2(data->lna);
		goto err_put_device;
	}

	data->on_off = FUNC4(dev, "sirf,onoff",
			GPIOD_OUT_LOW);
	if (FUNC1(data->on_off))
		goto err_put_device;

	if (data->on_off) {
		data->wakeup = FUNC4(dev, "sirf,wakeup",
				GPIOD_IN);
		if (FUNC1(data->wakeup))
			goto err_put_device;

		ret = FUNC21(data->vcc);
		if (ret)
			goto err_put_device;

		/* Wait for chip to boot into hibernate mode. */
		FUNC15(SIRF_BOOT_DELAY);
	}

	if (data->wakeup) {
		ret = FUNC12(data->wakeup);
		if (ret < 0)
			goto err_disable_vcc;
		data->active = ret;

		ret = FUNC13(data->wakeup);
		if (ret < 0)
			goto err_disable_vcc;
		data->irq = ret;

		ret = FUNC22(data->irq, NULL, sirf_wakeup_handler,
				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				"wakeup", data);
		if (ret)
			goto err_disable_vcc;
	}

	if (data->on_off) {
		if (!data->wakeup) {
			data->active = false;

			ret = FUNC29(data);
			if (ret)
				goto err_disable_vcc;

			FUNC15(SIRF_REPORT_CYCLE);
			FUNC28(data);
		}

		/* Force hibernate mode if already active. */
		if (data->active) {
			ret = FUNC30(data, false);
			if (ret) {
				FUNC3(dev, "failed to set hibernate mode: %d\n",
						ret);
				goto err_free_irq;
			}
		}
	}

	if (FUNC0(CONFIG_PM)) {
		FUNC19(dev);	/* clear runtime_error flag */
		FUNC18(dev);
	} else {
		ret = FUNC26(dev);
		if (ret < 0)
			goto err_free_irq;
	}

	ret = FUNC10(gdev);
	if (ret)
		goto err_disable_rpm;

	return 0;

err_disable_rpm:
	if (FUNC0(CONFIG_PM))
		FUNC17(dev);
	else
		FUNC27(dev);
err_free_irq:
	if (data->wakeup)
		FUNC7(data->irq, data);
err_disable_vcc:
	if (data->on_off)
		FUNC20(data->vcc);
err_put_device:
	FUNC9(data->gdev);

	return ret;
}