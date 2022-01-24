#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_algo_iop3xx_data {int class; int /*<<< orphan*/  ioaddr; struct i2c_algo_iop3xx_data* algo_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/ * algo; int /*<<< orphan*/  timeout; int /*<<< orphan*/  nr; TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; scalar_t__ id; void* gpio_sda; void* gpio_scl; } ;
struct i2c_adapter {int class; int /*<<< orphan*/  ioaddr; struct i2c_adapter* algo_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/ * algo; int /*<<< orphan*/  timeout; int /*<<< orphan*/  nr; TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; scalar_t__ id; void* gpio_sda; void* gpio_scl; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_ASIS ; 
 int /*<<< orphan*/  HZ ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  IOP3XX_I2C_IO_SIZE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 void* FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_iop3xx_data*) ; 
 int /*<<< orphan*/  i2c_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iop3xx_i2c_algo ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_algo_iop3xx_data*) ; 
 int /*<<< orphan*/  iop3xx_i2c_irq_handler ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_algo_iop3xx_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_algo_iop3xx_data*) ; 
 struct i2c_algo_iop3xx_data* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct i2c_algo_iop3xx_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i2c_algo_iop3xx_data*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(struct platform_device *pdev)
{
	struct resource *res;
	int ret, irq;
	struct i2c_adapter *new_adapter;
	struct i2c_algo_iop3xx_data *adapter_data;

	new_adapter = FUNC10(sizeof(struct i2c_adapter), GFP_KERNEL);
	if (!new_adapter) {
		ret = -ENOMEM;
		goto out;
	}

	adapter_data = FUNC10(sizeof(struct i2c_algo_iop3xx_data), GFP_KERNEL);
	if (!adapter_data) {
		ret = -ENOMEM;
		goto free_adapter;
	}

	adapter_data->gpio_scl = FUNC2(&pdev->dev,
							 "scl",
							 GPIOD_ASIS);
	if (FUNC0(adapter_data->gpio_scl))
		return FUNC1(adapter_data->gpio_scl);
	adapter_data->gpio_sda = FUNC2(&pdev->dev,
							 "sda",
							 GPIOD_ASIS);
	if (FUNC0(adapter_data->gpio_sda))
		return FUNC1(adapter_data->gpio_sda);

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		ret = -ENODEV;
		goto free_both;
	}

	if (!FUNC17(res->start, IOP3XX_I2C_IO_SIZE, pdev->name)) {
		ret = -EBUSY;
		goto free_both;
	}

	/* set the adapter enumeration # */
	adapter_data->id = i2c_id++;

	adapter_data->ioaddr = FUNC7(res->start, IOP3XX_I2C_IO_SIZE);
	if (!adapter_data->ioaddr) {
		ret = -ENOMEM;
		goto release_region;
	}

	irq = FUNC12(pdev, 0);
	if (irq < 0) {
		ret = -ENXIO;
		goto unmap;
	}
	ret = FUNC16(irq, iop3xx_i2c_irq_handler, 0,
				pdev->name, adapter_data);

	if (ret) {
		ret = -EIO;
		goto unmap;
	}

	FUNC11(new_adapter->name, pdev->name, FUNC19(pdev->name));
	new_adapter->owner = THIS_MODULE;
	new_adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	new_adapter->dev.parent = &pdev->dev;
	new_adapter->dev.of_node = pdev->dev.of_node;
	new_adapter->nr = pdev->id;

	/*
	 * Default values...should these come in from board code?
	 */
	new_adapter->timeout = HZ;
	new_adapter->algo = &iop3xx_i2c_algo;

	FUNC4(&adapter_data->waitq);
	FUNC18(&adapter_data->lock);

	FUNC6(adapter_data);
	FUNC5(adapter_data);

	FUNC14(pdev, new_adapter);
	new_adapter->algo_data = adapter_data;

	FUNC3(new_adapter);

	return 0;

unmap:
	FUNC8(adapter_data->ioaddr);

release_region:
	FUNC15(res->start, IOP3XX_I2C_IO_SIZE);

free_both:
	FUNC9(adapter_data);

free_adapter:
	FUNC9(new_adapter);

out:
	return ret;
}