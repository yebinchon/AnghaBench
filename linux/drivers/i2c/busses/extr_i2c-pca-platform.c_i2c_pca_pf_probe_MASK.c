#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {int flags; scalar_t__ start; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct TYPE_11__ {struct device_node* of_node; TYPE_4__* parent; } ;
struct TYPE_13__ {int /*<<< orphan*/  timeout; TYPE_1__ dev; TYPE_2__* algo_data; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; int /*<<< orphan*/  nr; } ;
struct TYPE_12__ {int i2c_clock; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  write_byte; int /*<<< orphan*/  reset_chip; int /*<<< orphan*/  wait_for_completion; struct i2c_pca_pf_data* data; } ;
struct i2c_pca_pf_data {int irq; TYPE_3__ adap; TYPE_2__ algo_data; scalar_t__ gpio; int /*<<< orphan*/  io_size; scalar_t__ io_base; int /*<<< orphan*/  wait; scalar_t__ reg_base; } ;
struct i2c_pca9564_pf_platform_data {int i2c_clock_speed; int /*<<< orphan*/  timeout; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
#define  IORESOURCE_MEM_16BIT 130 
#define  IORESOURCE_MEM_32BIT 129 
#define  IORESOURCE_MEM_8BIT 128 
 int IORESOURCE_MEM_TYPE_MASK ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct i2c_pca9564_pf_platform_data* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int FUNC4 (TYPE_4__*,char*,int*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,struct resource*) ; 
 struct i2c_pca_pf_data* FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i2c_pca_pf_data*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  i2c_pca_pf_dummyreset ; 
 int /*<<< orphan*/  i2c_pca_pf_handler ; 
 int /*<<< orphan*/  i2c_pca_pf_readbyte16 ; 
 int /*<<< orphan*/  i2c_pca_pf_readbyte32 ; 
 int /*<<< orphan*/  i2c_pca_pf_readbyte8 ; 
 int /*<<< orphan*/  i2c_pca_pf_resetchip ; 
 int /*<<< orphan*/  i2c_pca_pf_waitforcompletion ; 
 int /*<<< orphan*/  i2c_pca_pf_writebyte16 ; 
 int /*<<< orphan*/  i2c_pca_pf_writebyte32 ; 
 int /*<<< orphan*/  i2c_pca_pf_writebyte8 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct i2c_pca_pf_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct i2c_pca_pf_data *i2c;
	struct resource *res;
	struct i2c_pca9564_pf_platform_data *platform_data =
				FUNC2(&pdev->dev);
	struct device_node *np = pdev->dev.of_node;
	int ret = 0;
	int irq;

	irq = FUNC11(pdev, 0);
	/* If irq is 0, we do polling. */
	if (irq < 0)
		irq = 0;

	i2c = FUNC7(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	i2c->reg_base = FUNC6(&pdev->dev, res);
	if (FUNC0(i2c->reg_base))
		return FUNC1(i2c->reg_base);


	FUNC10(&i2c->wait);

	i2c->io_base = res->start;
	i2c->io_size = FUNC14(res);
	i2c->irq = irq;

	i2c->adap.nr = pdev->id;
	i2c->adap.owner = THIS_MODULE;
	FUNC15(i2c->adap.name, sizeof(i2c->adap.name),
		 "PCA9564/PCA9665 at 0x%08lx",
		 (unsigned long) res->start);
	i2c->adap.algo_data = &i2c->algo_data;
	i2c->adap.dev.parent = &pdev->dev;
	i2c->adap.dev.of_node = np;

	i2c->gpio = FUNC5(&pdev->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(i2c->gpio))
		return FUNC1(i2c->gpio);

	i2c->adap.timeout = HZ;
	ret = FUNC4(&pdev->dev, "clock-frequency",
				       &i2c->algo_data.i2c_clock);
	if (ret)
		i2c->algo_data.i2c_clock = 59000;

	if (platform_data) {
		i2c->adap.timeout = platform_data->timeout;
		i2c->algo_data.i2c_clock = platform_data->i2c_clock_speed;
	}

	i2c->algo_data.data = i2c;
	i2c->algo_data.wait_for_completion = i2c_pca_pf_waitforcompletion;
	if (i2c->gpio)
		i2c->algo_data.reset_chip = i2c_pca_pf_resetchip;
	else
		i2c->algo_data.reset_chip = i2c_pca_pf_dummyreset;

	switch (res->flags & IORESOURCE_MEM_TYPE_MASK) {
	case IORESOURCE_MEM_32BIT:
		i2c->algo_data.write_byte = i2c_pca_pf_writebyte32;
		i2c->algo_data.read_byte = i2c_pca_pf_readbyte32;
		break;
	case IORESOURCE_MEM_16BIT:
		i2c->algo_data.write_byte = i2c_pca_pf_writebyte16;
		i2c->algo_data.read_byte = i2c_pca_pf_readbyte16;
		break;
	case IORESOURCE_MEM_8BIT:
	default:
		i2c->algo_data.write_byte = i2c_pca_pf_writebyte8;
		i2c->algo_data.read_byte = i2c_pca_pf_readbyte8;
		break;
	}

	if (irq) {
		ret = FUNC8(&pdev->dev, irq, i2c_pca_pf_handler,
			IRQF_TRIGGER_FALLING, pdev->name, i2c);
		if (ret)
			return ret;
	}

	ret = FUNC9(&i2c->adap);
	if (ret)
		return ret;

	FUNC13(pdev, i2c);

	FUNC3(&pdev->dev, "registered.\n");

	return 0;
}