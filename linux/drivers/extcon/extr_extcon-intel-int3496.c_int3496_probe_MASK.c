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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct int3496_data {int usb_id_irq; int /*<<< orphan*/  work; void* edev; void* gpio_usb_mux; void* gpio_vbus_en; void* gpio_usb_id; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_ASIS ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  acpi_int3496_default_gpios ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,void*) ; 
 void* FUNC9 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct int3496_data* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct int3496_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (void*) ; 
 int /*<<< orphan*/  int3496_cable ; 
 int /*<<< orphan*/  int3496_do_usb_id ; 
 int /*<<< orphan*/  int3496_thread_isr ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct int3496_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct int3496_data *data;
	int ret;

	ret = FUNC6(dev, acpi_int3496_default_gpios);
	if (ret) {
		FUNC3(dev, "can't add GPIO ACPI mapping\n");
		return ret;
	}

	data = FUNC10(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->dev = dev;
	FUNC0(&data->work, int3496_do_usb_id);

	data->gpio_usb_id = FUNC9(dev, "id", GPIOD_IN);
	if (FUNC1(data->gpio_usb_id)) {
		ret = FUNC2(data->gpio_usb_id);
		FUNC3(dev, "can't request USB ID GPIO: %d\n", ret);
		return ret;
	}

	data->usb_id_irq = FUNC13(data->gpio_usb_id);
	if (data->usb_id_irq < 0) {
		FUNC3(dev, "can't get USB ID IRQ: %d\n", data->usb_id_irq);
		return data->usb_id_irq;
	}

	data->gpio_vbus_en = FUNC9(dev, "vbus", GPIOD_ASIS);
	if (FUNC1(data->gpio_vbus_en))
		FUNC4(dev, "can't request VBUS EN GPIO\n");

	data->gpio_usb_mux = FUNC9(dev, "mux", GPIOD_ASIS);
	if (FUNC1(data->gpio_usb_mux))
		FUNC4(dev, "can't request USB MUX GPIO\n");

	/* register extcon device */
	data->edev = FUNC7(dev, int3496_cable);
	if (FUNC1(data->edev))
		return -ENOMEM;

	ret = FUNC8(dev, data->edev);
	if (ret < 0) {
		FUNC3(dev, "can't register extcon device: %d\n", ret);
		return ret;
	}

	ret = FUNC11(dev, data->usb_id_irq,
					NULL, int3496_thread_isr,
					IRQF_SHARED | IRQF_ONESHOT |
					IRQF_TRIGGER_RISING |
					IRQF_TRIGGER_FALLING,
					FUNC5(dev), data);
	if (ret < 0) {
		FUNC3(dev, "can't request IRQ for USB ID GPIO: %d\n", ret);
		return ret;
	}

	/* process id-pin so that we start with the right status */
	FUNC15(system_wq, &data->work, 0);
	FUNC12(&data->work);

	FUNC14(pdev, data);

	return 0;
}