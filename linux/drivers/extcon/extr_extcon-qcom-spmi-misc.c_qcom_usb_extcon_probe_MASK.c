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
struct qcom_usb_extcon_info {scalar_t__ irq; TYPE_1__ wq_detcable; int /*<<< orphan*/  debounce_jiffies; int /*<<< orphan*/  edev; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ID_DEBOUNCE_MS ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct qcom_usb_extcon_info* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct qcom_usb_extcon_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct qcom_usb_extcon_info*) ; 
 int /*<<< orphan*/  qcom_usb_extcon_cable ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qcom_usb_irq_handler ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct qcom_usb_extcon_info *info;
	int ret;

	info = FUNC6(dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->edev = FUNC4(dev, qcom_usb_extcon_cable);
	if (FUNC1(info->edev)) {
		FUNC2(dev, "failed to allocate extcon device\n");
		return -ENOMEM;
	}

	ret = FUNC5(dev, info->edev);
	if (ret < 0) {
		FUNC2(dev, "failed to register extcon device\n");
		return ret;
	}

	info->debounce_jiffies = FUNC8(USB_ID_DEBOUNCE_MS);
	FUNC0(&info->wq_detcable, qcom_usb_extcon_detect_cable);

	info->irq = FUNC9(pdev, "usb_id");
	if (info->irq < 0)
		return info->irq;

	ret = FUNC7(dev, info->irq, NULL,
					qcom_usb_irq_handler,
					IRQF_TRIGGER_RISING |
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					pdev->name, info);
	if (ret < 0) {
		FUNC2(dev, "failed to request handler for ID IRQ\n");
		return ret;
	}

	FUNC10(pdev, info);
	FUNC3(dev, 1);

	/* Perform initial detection */
	FUNC11(&info->wq_detcable.work);

	return 0;
}