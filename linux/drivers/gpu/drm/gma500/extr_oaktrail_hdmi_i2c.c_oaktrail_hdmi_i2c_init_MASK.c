#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct hdmi_i2c_dev {int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/  complete; int /*<<< orphan*/  status; TYPE_1__* adap; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_STAT_INIT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct oaktrail_hdmi_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_i2c_dev*) ; 
 struct hdmi_i2c_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ oaktrail_hdmi_i2c_adapter ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  oaktrail_hdmi_i2c_handler ; 
 struct oaktrail_hdmi_dev* FUNC8 (struct pci_dev*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct oaktrail_hdmi_dev*) ; 

int FUNC10(struct pci_dev *dev)
{
	struct oaktrail_hdmi_dev *hdmi_dev;
	struct hdmi_i2c_dev *i2c_dev;
	int ret;

	hdmi_dev = FUNC8(dev);

	i2c_dev = FUNC5(sizeof(struct hdmi_i2c_dev), GFP_KERNEL);
	if (i2c_dev == NULL) {
		FUNC0("Can't allocate interface\n");
		ret = -ENOMEM;
		goto exit;
	}

	i2c_dev->adap = &oaktrail_hdmi_i2c_adapter;
	i2c_dev->status = I2C_STAT_INIT;
	FUNC3(&i2c_dev->complete);
	FUNC6(&i2c_dev->i2c_lock);
	FUNC2(&oaktrail_hdmi_i2c_adapter, hdmi_dev);
	hdmi_dev->i2c_dev = i2c_dev;

	/* Enable HDMI I2C function on gpio */
	FUNC7();

	/* request irq */
	ret = FUNC9(dev->irq, oaktrail_hdmi_i2c_handler, IRQF_SHARED,
			  oaktrail_hdmi_i2c_adapter.name, hdmi_dev);
	if (ret) {
		FUNC0("Failed to request IRQ for I2C controller\n");
		goto err;
	}

	/* Adapter registration */
	ret = FUNC1(&oaktrail_hdmi_i2c_adapter);
	return ret;

err:
	FUNC4(i2c_dev);
exit:
	return ret;
}