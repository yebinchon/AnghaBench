#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct TYPE_8__ {int retries; int /*<<< orphan*/  name; TYPE_2__ dev; int /*<<< orphan*/ * bus_recovery_info; int /*<<< orphan*/  class; } ;
struct TYPE_6__ {int sw_twsi; int twsi_int; int sw_twsi_ext; } ;
struct octeon_i2c {int twsi_freq; int /*<<< orphan*/  clk; int /*<<< orphan*/  sys_freq; struct device* dev; TYPE_3__ adap; int /*<<< orphan*/  hlc_int_disable; int /*<<< orphan*/  hlc_int_enable; int /*<<< orphan*/  int_disable; int /*<<< orphan*/  int_enable; int /*<<< orphan*/  queue; int /*<<< orphan*/  twsi_base; TYPE_1__ roff; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 char* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,char*,int*) ; 
 struct octeon_i2c* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct octeon_i2c*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct octeon_i2c*) ; 
 int /*<<< orphan*/  octeon_i2c_isr ; 
 int /*<<< orphan*/  octeon_i2c_recovery_info ; 
 int /*<<< orphan*/  FUNC9 (struct octeon_i2c*) ; 
 int FUNC10 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct octeon_i2c*) ; 
 int FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct device*,struct octeon_i2c*) ; 
 int /*<<< orphan*/  thunder_i2c_hlc_int_disable ; 
 int /*<<< orphan*/  thunder_i2c_hlc_int_enable ; 
 int /*<<< orphan*/  thunder_i2c_int_disable ; 
 int /*<<< orphan*/  thunder_i2c_int_enable ; 
 int FUNC20 (struct octeon_i2c*,int /*<<< orphan*/ ) ; 
 TYPE_3__ thunderx_i2c_ops ; 

__attribute__((used)) static int FUNC21(struct pci_dev *pdev,
				 const struct pci_device_id *ent)
{
	struct device *dev = &pdev->dev;
	struct octeon_i2c *i2c;
	int ret;

	i2c = FUNC3(dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	i2c->roff.sw_twsi = 0x1000;
	i2c->roff.twsi_int = 0x1010;
	i2c->roff.sw_twsi_ext = 0x1018;

	i2c->dev = dev;
	FUNC14(pdev, i2c);
	ret = FUNC15(pdev);
	if (ret)
		return ret;

	ret = FUNC12(pdev, DRV_NAME);
	if (ret)
		return ret;

	i2c->twsi_base = FUNC16(pdev, 0, FUNC13(pdev, 0));
	if (!i2c->twsi_base)
		return -EINVAL;

	FUNC19(dev, i2c);
	ret = FUNC2(dev, "clock-frequency", &i2c->twsi_freq);
	if (ret)
		i2c->twsi_freq = 100000;

	FUNC7(&i2c->queue);

	i2c->int_enable = thunder_i2c_int_enable;
	i2c->int_disable = thunder_i2c_int_disable;
	i2c->hlc_int_enable = thunder_i2c_hlc_int_enable;
	i2c->hlc_int_disable = thunder_i2c_hlc_int_disable;

	ret = FUNC10(pdev, 1, 1, PCI_IRQ_MSIX);
	if (ret < 0)
		goto error;

	ret = FUNC4(dev, FUNC11(pdev, 0), octeon_i2c_isr, 0,
			       DRV_NAME, i2c);
	if (ret)
		goto error;

	ret = FUNC8(i2c);
	if (ret)
		goto error;

	FUNC9(i2c);

	i2c->adap = thunderx_i2c_ops;
	i2c->adap.retries = 5;
	i2c->adap.class = I2C_CLASS_HWMON;
	i2c->adap.bus_recovery_info = &octeon_i2c_recovery_info;
	i2c->adap.dev.parent = dev;
	i2c->adap.dev.of_node = pdev->dev.of_node;
	FUNC17(i2c->adap.name, sizeof(i2c->adap.name),
		 "Cavium ThunderX i2c adapter at %s", FUNC1(dev));
	FUNC6(&i2c->adap, i2c);

	ret = FUNC5(&i2c->adap);
	if (ret)
		goto error;

	FUNC0(i2c->dev, "Probed. Set system clock to %u\n", i2c->sys_freq);

	ret = FUNC20(i2c, pdev->dev.of_node);
	if (ret)
		FUNC0(dev, "SMBUS alert not active on this bus\n");

	return 0;

error:
	FUNC18(dev, i2c->clk);
	return ret;
}