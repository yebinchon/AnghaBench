#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max14577_muic_irq {int virq; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct max14577_muic_info {int muic_irqs_num; int /*<<< orphan*/  wq_detcable; TYPE_1__* dev; struct max14577* max14577; int /*<<< orphan*/  path_uart; int /*<<< orphan*/  status; int /*<<< orphan*/  path_usb; int /*<<< orphan*/  edev; struct max14577_muic_irq* muic_irqs; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  mutex; } ;
struct max14577 {int dev_type; int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_DEBOUNCE_TIME_25MS ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  CTRL1_SW_UART ; 
 int /*<<< orphan*/  CTRL1_SW_USB ; 
 int /*<<< orphan*/  DELAY_MS_DEFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX14577_CABLE_GROUP_ADC ; 
 int MAX14577_MUIC_ADC_FACTORY_MODE_UART_OFF ; 
 int /*<<< orphan*/  MAX14577_MUIC_REG_STATUS1 ; 
 int /*<<< orphan*/  MAX14577_REG_DEVICEID ; 
#define  MAXIM_DEVICE_TYPE_MAX14577 129 
#define  MAXIM_DEVICE_TYPE_MAX77836 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 struct max14577* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct max14577_muic_info* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct max14577_muic_info*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  max14577_extcon_cable ; 
 int /*<<< orphan*/  max14577_muic_detect_cable_wq ; 
 int FUNC12 (struct max14577_muic_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  max14577_muic_irq_handler ; 
 int /*<<< orphan*/  max14577_muic_irq_work ; 
 void* max14577_muic_irqs ; 
 int /*<<< orphan*/  FUNC13 (struct max14577_muic_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct max14577_muic_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* max77836_muic_irqs ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct max14577_muic_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct max14577 *max14577 = FUNC5(pdev->dev.parent);
	struct max14577_muic_info *info;
	int delay_jiffies;
	int cable_type;
	bool attached;
	int ret;
	int i;
	u8 id;

	info = FUNC9(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = &pdev->dev;
	info->max14577 = max14577;

	FUNC18(pdev, info);
	FUNC17(&info->mutex);

	FUNC2(&info->irq_work, max14577_muic_irq_work);

	switch (max14577->dev_type) {
	case MAXIM_DEVICE_TYPE_MAX77836:
		info->muic_irqs = max77836_muic_irqs;
		info->muic_irqs_num = FUNC0(max77836_muic_irqs);
		break;
	case MAXIM_DEVICE_TYPE_MAX14577:
	default:
		info->muic_irqs = max14577_muic_irqs;
		info->muic_irqs_num = FUNC0(max14577_muic_irqs);
	}

	/* Support irq domain for max14577 MUIC device */
	for (i = 0; i < info->muic_irqs_num; i++) {
		struct max14577_muic_irq *muic_irq = &info->muic_irqs[i];
		int virq = 0;

		virq = FUNC20(max14577->irq_data, muic_irq->irq);
		if (virq <= 0)
			return -EINVAL;
		muic_irq->virq = virq;

		ret = FUNC10(&pdev->dev, virq, NULL,
				max14577_muic_irq_handler,
				IRQF_NO_SUSPEND,
				muic_irq->name, info);
		if (ret) {
			FUNC4(&pdev->dev,
				"failed: irq request (IRQ: %d, error :%d)\n",
				muic_irq->irq, ret);
			return ret;
		}
	}

	/* Initialize extcon device */
	info->edev = FUNC7(&pdev->dev,
					      max14577_extcon_cable);
	if (FUNC3(info->edev)) {
		FUNC4(&pdev->dev, "failed to allocate memory for extcon\n");
		return -ENOMEM;
	}

	ret = FUNC8(&pdev->dev, info->edev);
	if (ret) {
		FUNC4(&pdev->dev, "failed to register extcon device\n");
		return ret;
	}

	/* Default h/w line path */
	info->path_usb = CTRL1_SW_USB;
	info->path_uart = CTRL1_SW_UART;
	delay_jiffies = FUNC16(DELAY_MS_DEFAULT);

	/* Set initial path for UART when JIG is connected to get serial logs */
	ret = FUNC11(info->max14577->regmap,
			MAX14577_MUIC_REG_STATUS1, info->status, 2);
	if (ret) {
		FUNC4(info->dev, "Cannot read STATUS registers\n");
		return ret;
	}
	cable_type = FUNC12(info, MAX14577_CABLE_GROUP_ADC,
					 &attached);
	if (attached && cable_type == MAX14577_MUIC_ADC_FACTORY_MODE_UART_OFF)
		FUNC14(info, info->path_uart, true);

	/* Check revision number of MUIC device*/
	ret = FUNC15(info->max14577->regmap,
			MAX14577_REG_DEVICEID, &id);
	if (ret < 0) {
		FUNC4(&pdev->dev, "failed to read revision number\n");
		return ret;
	}
	FUNC6(info->dev, "device ID : 0x%x\n", id);

	/* Set ADC debounce time */
	FUNC13(info, ADC_DEBOUNCE_TIME_25MS);

	/*
	 * Detect accessory after completing the initialization of platform
	 *
	 * - Use delayed workqueue to detect cable state and then
	 * notify cable state to notifiee/platform through uevent.
	 * After completing the booting of platform, the extcon provider
	 * driver should notify cable state to upper layer.
	 */
	FUNC1(&info->wq_detcable, max14577_muic_detect_cable_wq);
	FUNC19(system_power_efficient_wq, &info->wq_detcable,
			delay_jiffies);

	return ret;
}