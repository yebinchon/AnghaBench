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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct usb_extcon_info {scalar_t__ id_irq; scalar_t__ vbus_irq; TYPE_1__ wq_detcable; void* vbus_gpiod; void* id_gpiod; int /*<<< orphan*/  debounce_jiffies; void* edev; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int USB_GPIO_DEBOUNCE_MS ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 void* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,void*) ; 
 void* FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct usb_extcon_info* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct usb_extcon_info*) ; 
 int FUNC10 (void*,int) ; 
 void* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct usb_extcon_info*) ; 
 int /*<<< orphan*/  usb_extcon_cable ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_irq_handler ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct usb_extcon_info *info;
	int ret;

	if (!np)
		return -EINVAL;

	info = FUNC8(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = dev;
	info->id_gpiod = FUNC7(&pdev->dev, "id", GPIOD_IN);
	info->vbus_gpiod = FUNC7(&pdev->dev, "vbus",
						   GPIOD_IN);

	if (!info->id_gpiod && !info->vbus_gpiod) {
		FUNC3(dev, "failed to get gpios\n");
		return -ENODEV;
	}

	if (FUNC1(info->id_gpiod))
		return FUNC2(info->id_gpiod);

	if (FUNC1(info->vbus_gpiod))
		return FUNC2(info->vbus_gpiod);

	info->edev = FUNC5(dev, usb_extcon_cable);
	if (FUNC1(info->edev)) {
		FUNC3(dev, "failed to allocate extcon device\n");
		return -ENOMEM;
	}

	ret = FUNC6(dev, info->edev);
	if (ret < 0) {
		FUNC3(dev, "failed to register extcon device\n");
		return ret;
	}

	if (info->id_gpiod)
		ret = FUNC10(info->id_gpiod,
					 USB_GPIO_DEBOUNCE_MS * 1000);
	if (!ret && info->vbus_gpiod)
		ret = FUNC10(info->vbus_gpiod,
					 USB_GPIO_DEBOUNCE_MS * 1000);

	if (ret < 0)
		info->debounce_jiffies = FUNC12(USB_GPIO_DEBOUNCE_MS);

	FUNC0(&info->wq_detcable, usb_extcon_detect_cable);

	if (info->id_gpiod) {
		info->id_irq = FUNC11(info->id_gpiod);
		if (info->id_irq < 0) {
			FUNC3(dev, "failed to get ID IRQ\n");
			return info->id_irq;
		}

		ret = FUNC9(dev, info->id_irq, NULL,
						usb_irq_handler,
						IRQF_TRIGGER_RISING |
						IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
						pdev->name, info);
		if (ret < 0) {
			FUNC3(dev, "failed to request handler for ID IRQ\n");
			return ret;
		}
	}

	if (info->vbus_gpiod) {
		info->vbus_irq = FUNC11(info->vbus_gpiod);
		if (info->vbus_irq < 0) {
			FUNC3(dev, "failed to get VBUS IRQ\n");
			return info->vbus_irq;
		}

		ret = FUNC9(dev, info->vbus_irq, NULL,
						usb_irq_handler,
						IRQF_TRIGGER_RISING |
						IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
						pdev->name, info);
		if (ret < 0) {
			FUNC3(dev, "failed to request handler for VBUS IRQ\n");
			return ret;
		}
	}

	FUNC13(pdev, info);
	FUNC4(&pdev->dev, true);

	/* Perform initial detection */
	FUNC14(&info->wq_detcable.work);

	return 0;
}