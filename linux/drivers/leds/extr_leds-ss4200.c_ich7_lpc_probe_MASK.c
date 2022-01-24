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
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int EIO ; 
 int /*<<< orphan*/  GPIO_BASE ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int GPIO_EN ; 
 int /*<<< orphan*/  ICH7_GPIO_SIZE ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  PMBASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int g_pm_io_base ; 
 int /*<<< orphan*/ * gp_gpio_resource ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int nas_gpio_io_base ; 
 struct pci_dev* nas_gpio_pci_dev ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *dev,
				    const struct pci_device_id *id)
{
	int status;
	u32 gc = 0;

	status = FUNC6(dev);
	if (status) {
		FUNC1(&dev->dev, "pci_enable_device failed\n");
		return -EIO;
	}

	nas_gpio_pci_dev = dev;
	status = FUNC7(dev, PMBASE, &g_pm_io_base);
	if (status)
		goto out;
	g_pm_io_base &= 0x00000ff80;

	status = FUNC7(dev, GPIO_CTRL, &gc);
	if (!(GPIO_EN & gc)) {
		status = -EEXIST;
		FUNC2(&dev->dev,
			   "ERROR: The LPC GPIO Block has not been enabled.\n");
		goto out;
	}

	status = FUNC7(dev, GPIO_BASE, &nas_gpio_io_base);
	if (0 > status) {
		FUNC2(&dev->dev, "Unable to read GPIOBASE.\n");
		goto out;
	}
	FUNC0(&dev->dev, ": GPIOBASE = 0x%08x\n", nas_gpio_io_base);
	nas_gpio_io_base &= 0x00000ffc0;

	/*
	 * Insure that we have exclusive access to the GPIO I/O address range.
	 */
	gp_gpio_resource = FUNC8(nas_gpio_io_base, ICH7_GPIO_SIZE,
					  KBUILD_MODNAME);
	if (NULL == gp_gpio_resource) {
		FUNC2(&dev->dev,
			 "ERROR Unable to register GPIO I/O addresses.\n");
		status = -1;
		goto out;
	}

	/*
	 * Initialize the GPIO for NAS/Home Server Use
	 */
	FUNC3(&dev->dev);

out:
	if (status) {
		FUNC4(&dev->dev);
		FUNC5(dev);
	}
	return status;
}