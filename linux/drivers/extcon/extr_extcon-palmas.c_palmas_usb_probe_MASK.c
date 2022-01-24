#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct palmas_usb_platform_data {int wakeup; } ;
struct TYPE_11__ {int /*<<< orphan*/  work; } ;
struct palmas_usb {int wakeup; int enable_id_detection; int enable_vbus_detection; int enable_gpio_id_detection; int enable_gpio_vbus_detection; int id_irq; scalar_t__ gpio_id_irq; int vbus_irq; scalar_t__ gpio_vbus_irq; TYPE_9__ wq_detectid; void* vbus_gpiod; void* vbus_otg_irq; TYPE_1__* dev; void* id_gpiod; void* id_otg_irq; void* edev; struct palmas* palmas; int /*<<< orphan*/  sw_debounce_jiffies; } ;
struct palmas {int /*<<< orphan*/  irq_data; struct palmas_usb* usb; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  PALMAS_ID_IRQ ; 
 int /*<<< orphan*/  PALMAS_ID_OTG_IRQ ; 
 int /*<<< orphan*/  PALMAS_PRIMARY_SECONDARY_PAD1 ; 
 int /*<<< orphan*/  PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK ; 
 int PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT ; 
 int /*<<< orphan*/  PALMAS_PU_PD_OD_BASE ; 
 int /*<<< orphan*/  PALMAS_VBUS_IRQ ; 
 int /*<<< orphan*/  PALMAS_VBUS_OTG_IRQ ; 
 int FUNC2 (void*) ; 
 int USB_GPIO_DEBOUNCE_MS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct palmas* FUNC4 (int /*<<< orphan*/ ) ; 
 struct palmas_usb_platform_data* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 void* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,void*) ; 
 void* FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct palmas_usb* FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int,struct palmas_usb*),int,char*,struct palmas_usb*) ; 
 int FUNC12 (void*,int) ; 
 void* FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 void* FUNC15 (struct device_node*,char*) ; 
 scalar_t__ FUNC16 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct palmas_usb*) ; 
 int /*<<< orphan*/  palmas_extcon_cable ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,struct palmas_usb*) ; 
 int /*<<< orphan*/  FUNC20 (int,struct palmas_usb*) ; 
 int FUNC21 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct palmas*,int) ; 
 int /*<<< orphan*/  FUNC23 (int,struct palmas_usb*) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct palmas_usb*) ; 
 void* FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct palmas *palmas = FUNC4(pdev->dev.parent);
	struct palmas_usb_platform_data	*pdata = FUNC5(&pdev->dev);
	struct device_node *node = pdev->dev.of_node;
	struct palmas_usb *palmas_usb;
	int status;

	if (!palmas) {
		FUNC3(&pdev->dev, "failed to get valid parent\n");
		return -EINVAL;
	}

	palmas_usb = FUNC10(&pdev->dev, sizeof(*palmas_usb), GFP_KERNEL);
	if (!palmas_usb)
		return -ENOMEM;

	if (node && !pdata) {
		palmas_usb->wakeup = FUNC15(node, "ti,wakeup");
		palmas_usb->enable_id_detection = FUNC15(node,
						"ti,enable-id-detection");
		palmas_usb->enable_vbus_detection = FUNC15(node,
						"ti,enable-vbus-detection");
	} else {
		palmas_usb->wakeup = true;
		palmas_usb->enable_id_detection = true;
		palmas_usb->enable_vbus_detection = true;

		if (pdata)
			palmas_usb->wakeup = pdata->wakeup;
	}

	palmas_usb->id_gpiod = FUNC9(&pdev->dev, "id",
							GPIOD_IN);
	if (FUNC1(palmas_usb->id_gpiod)) {
		FUNC3(&pdev->dev, "failed to get id gpio\n");
		return FUNC2(palmas_usb->id_gpiod);
	}

	palmas_usb->vbus_gpiod = FUNC9(&pdev->dev, "vbus",
							GPIOD_IN);
	if (FUNC1(palmas_usb->vbus_gpiod)) {
		FUNC3(&pdev->dev, "failed to get vbus gpio\n");
		return FUNC2(palmas_usb->vbus_gpiod);
	}

	if (palmas_usb->enable_id_detection && palmas_usb->id_gpiod) {
		palmas_usb->enable_id_detection = false;
		palmas_usb->enable_gpio_id_detection = true;
	}

	if (palmas_usb->enable_vbus_detection && palmas_usb->vbus_gpiod) {
		palmas_usb->enable_vbus_detection = false;
		palmas_usb->enable_gpio_vbus_detection = true;
	}

	if (palmas_usb->enable_gpio_id_detection) {
		u32 debounce;

		if (FUNC16(node, "debounce-delay-ms", &debounce))
			debounce = USB_GPIO_DEBOUNCE_MS;

		status = FUNC12(palmas_usb->id_gpiod,
					    debounce * 1000);
		if (status < 0)
			palmas_usb->sw_debounce_jiffies = FUNC14(debounce);
	}

	FUNC0(&palmas_usb->wq_detectid, palmas_gpio_id_detect);

	palmas->usb = palmas_usb;
	palmas_usb->palmas = palmas;

	palmas_usb->dev	 = &pdev->dev;

	FUNC22(palmas, palmas_usb->wakeup);

	FUNC24(pdev, palmas_usb);

	palmas_usb->edev = FUNC7(&pdev->dev,
						    palmas_extcon_cable);
	if (FUNC1(palmas_usb->edev)) {
		FUNC3(&pdev->dev, "failed to allocate extcon device\n");
		return -ENOMEM;
	}

	status = FUNC8(&pdev->dev, palmas_usb->edev);
	if (status) {
		FUNC3(&pdev->dev, "failed to register extcon device\n");
		return status;
	}

	if (palmas_usb->enable_id_detection) {
		palmas_usb->id_otg_irq = FUNC25(palmas->irq_data,
							     PALMAS_ID_OTG_IRQ);
		palmas_usb->id_irq = FUNC25(palmas->irq_data,
							 PALMAS_ID_IRQ);
		status = FUNC11(palmas_usb->dev,
				palmas_usb->id_irq,
				NULL, palmas_id_irq_handler,
				IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING |
				IRQF_ONESHOT,
				"palmas_usb_id", palmas_usb);
		if (status < 0) {
			FUNC3(&pdev->dev, "can't get IRQ %d, err %d\n",
					palmas_usb->id_irq, status);
			return status;
		}
	} else if (palmas_usb->enable_gpio_id_detection) {
		palmas_usb->gpio_id_irq = FUNC13(palmas_usb->id_gpiod);
		if (palmas_usb->gpio_id_irq < 0) {
			FUNC3(&pdev->dev, "failed to get id irq\n");
			return palmas_usb->gpio_id_irq;
		}
		status = FUNC11(&pdev->dev,
						   palmas_usb->gpio_id_irq,
						   NULL,
						   palmas_gpio_id_irq_handler,
						   IRQF_TRIGGER_RISING |
						   IRQF_TRIGGER_FALLING |
						   IRQF_ONESHOT,
						   "palmas_usb_id",
						   palmas_usb);
		if (status < 0) {
			FUNC3(&pdev->dev,
				"failed to request handler for id irq\n");
			return status;
		}
	}

	if (palmas_usb->enable_vbus_detection) {
		palmas_usb->vbus_otg_irq = FUNC25(palmas->irq_data,
						       PALMAS_VBUS_OTG_IRQ);
		palmas_usb->vbus_irq = FUNC25(palmas->irq_data,
							   PALMAS_VBUS_IRQ);
		status = FUNC11(palmas_usb->dev,
				palmas_usb->vbus_irq, NULL,
				palmas_vbus_irq_handler,
				IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING |
				IRQF_ONESHOT,
				"palmas_usb_vbus", palmas_usb);
		if (status < 0) {
			FUNC3(&pdev->dev, "can't get IRQ %d, err %d\n",
					palmas_usb->vbus_irq, status);
			return status;
		}
	} else if (palmas_usb->enable_gpio_vbus_detection) {
		/* remux GPIO_1 as VBUSDET */
		status = FUNC21(palmas,
			PALMAS_PU_PD_OD_BASE,
			PALMAS_PRIMARY_SECONDARY_PAD1,
			PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK,
			(1 << PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT));
		if (status < 0) {
			FUNC3(&pdev->dev, "can't remux GPIO1\n");
			return status;
		}

		palmas_usb->vbus_otg_irq = FUNC25(palmas->irq_data,
						       PALMAS_VBUS_OTG_IRQ);
		palmas_usb->gpio_vbus_irq = FUNC13(palmas_usb->vbus_gpiod);
		if (palmas_usb->gpio_vbus_irq < 0) {
			FUNC3(&pdev->dev, "failed to get vbus irq\n");
			return palmas_usb->gpio_vbus_irq;
		}
		status = FUNC11(&pdev->dev,
						palmas_usb->gpio_vbus_irq,
						NULL,
						palmas_vbus_irq_handler,
						IRQF_TRIGGER_FALLING |
						IRQF_TRIGGER_RISING |
						IRQF_ONESHOT,
						"palmas_usb_vbus",
						palmas_usb);
		if (status < 0) {
			FUNC3(&pdev->dev,
				"failed to request handler for vbus irq\n");
			return status;
		}
	}

	FUNC17(palmas_usb);
	/* perform initial detection */
	if (palmas_usb->enable_gpio_vbus_detection)
		FUNC23(palmas_usb->gpio_vbus_irq, palmas_usb);
	FUNC18(&palmas_usb->wq_detectid.work);
	FUNC6(&pdev->dev, true);
	return 0;
}