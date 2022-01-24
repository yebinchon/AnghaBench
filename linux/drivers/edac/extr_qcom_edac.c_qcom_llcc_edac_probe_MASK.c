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
struct device {struct llcc_drv_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct llcc_drv_data {int ecc_irq; int /*<<< orphan*/  num_banks; int /*<<< orphan*/  bcast_regmap; } ;
struct edac_device_ctl_info {char* ctl_name; struct device* dev; struct llcc_drv_data* pvt_info; int /*<<< orphan*/  panic_on_ue; void* dev_name; void* mod_name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  LLCC_ERP_PANIC_ON_UE ; 
 void* FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct edac_device_ctl_info*) ; 
 int FUNC2 (struct edac_device_ctl_info*) ; 
 struct edac_device_ctl_info* FUNC3 (int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  llcc_ecc_irq_handler ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct edac_device_ctl_info*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct llcc_drv_data *llcc_driv_data = pdev->dev.platform_data;
	struct edac_device_ctl_info *edev_ctl;
	struct device *dev = &pdev->dev;
	int ecc_irq;
	int rc;

	rc = FUNC8(llcc_driv_data->bcast_regmap);
	if (rc)
		return rc;

	/* Allocate edac control info */
	edev_ctl = FUNC3(0, "qcom-llcc", 1, "bank",
					      llcc_driv_data->num_banks, 1,
					      NULL, 0,
					      FUNC4());

	if (!edev_ctl)
		return -ENOMEM;

	edev_ctl->dev = dev;
	edev_ctl->mod_name = FUNC0(dev);
	edev_ctl->dev_name = FUNC0(dev);
	edev_ctl->ctl_name = "llcc";
	edev_ctl->panic_on_ue = LLCC_ERP_PANIC_ON_UE;
	edev_ctl->pvt_info = llcc_driv_data;

	rc = FUNC2(edev_ctl);
	if (rc)
		goto out_mem;

	FUNC7(pdev, edev_ctl);

	/* Request for ecc irq */
	ecc_irq = llcc_driv_data->ecc_irq;
	if (ecc_irq < 0) {
		rc = -ENODEV;
		goto out_dev;
	}
	rc = FUNC1(dev, ecc_irq, llcc_ecc_irq_handler,
			      IRQF_TRIGGER_HIGH, "llcc_ecc", edev_ctl);
	if (rc)
		goto out_dev;

	return rc;

out_dev:
	FUNC5(edev_ctl->dev);
out_mem:
	FUNC6(edev_ctl);

	return rc;
}