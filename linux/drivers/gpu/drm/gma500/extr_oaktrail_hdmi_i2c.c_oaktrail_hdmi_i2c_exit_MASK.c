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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct hdmi_i2c_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct oaktrail_hdmi_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_i2c_dev*) ; 
 int /*<<< orphan*/  oaktrail_hdmi_i2c_adapter ; 
 struct oaktrail_hdmi_dev* FUNC3 (struct pci_dev*) ; 

void FUNC4(struct pci_dev *dev)
{
	struct oaktrail_hdmi_dev *hdmi_dev;
	struct hdmi_i2c_dev *i2c_dev;

	hdmi_dev = FUNC3(dev);
	FUNC1(&oaktrail_hdmi_i2c_adapter);

	i2c_dev = hdmi_dev->i2c_dev;
	FUNC2(i2c_dev);
	FUNC0(dev->irq, hdmi_dev);
}