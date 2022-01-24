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
struct sh7760_i2c_platdata {int speed_khz; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int class; int retries; int /*<<< orphan*/  name; TYPE_1__ dev; struct cami2c* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  nr; } ;
struct cami2c {int irq; struct cami2c* ioarea; int /*<<< orphan*/  iobase; TYPE_2__ adap; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FCR_RFRST ; 
 int FCR_TFRST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2CCCR ; 
 int /*<<< orphan*/  I2CFCR ; 
 int /*<<< orphan*/  I2CFIER ; 
 int /*<<< orphan*/  I2CFSR ; 
 int /*<<< orphan*/  I2CMAR ; 
 int /*<<< orphan*/  I2CMCR ; 
 int /*<<< orphan*/  I2CMIER ; 
 int /*<<< orphan*/  I2CMSR ; 
 int /*<<< orphan*/  I2CSAR ; 
 int /*<<< orphan*/  I2CSCR ; 
 int /*<<< orphan*/  I2CSIER ; 
 int /*<<< orphan*/  I2CSSR ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct cami2c*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  REGSIZE ; 
 int /*<<< orphan*/  SH7760_I2C_DEVNAME ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct sh7760_i2c_platdata* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct cami2c*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cami2c*) ; 
 struct cami2c* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct cami2c*) ; 
 int /*<<< orphan*/  FUNC14 (struct cami2c*) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cami2c*) ; 
 struct cami2c* FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sh7760_i2c_algo ; 
 int /*<<< orphan*/  sh7760_i2c_irq ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct sh7760_i2c_platdata *pd;
	struct resource *res;
	struct cami2c *id;
	int ret;

	pd = FUNC3(&pdev->dev);
	if (!pd) {
		FUNC2(&pdev->dev, "no platform_data!\n");
		ret = -ENODEV;
		goto out0;
	}

	id = FUNC10(sizeof(struct cami2c), GFP_KERNEL);
	if (!id) {
		FUNC2(&pdev->dev, "no mem for private data\n");
		ret = -ENOMEM;
		goto out0;
	}

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(&pdev->dev, "no mmio resources\n");
		ret = -ENODEV;
		goto out1;
	}

	id->ioarea = FUNC16(res->start, REGSIZE, pdev->name);
	if (!id->ioarea) {
		FUNC2(&pdev->dev, "mmio already reserved\n");
		ret = -EBUSY;
		goto out1;
	}

	id->iobase = FUNC7(res->start, REGSIZE);
	if (!id->iobase) {
		FUNC2(&pdev->dev, "cannot ioremap\n");
		ret = -ENODEV;
		goto out2;
	}

	id->irq = FUNC11(pdev, 0);

	id->adap.nr = pdev->id;
	id->adap.algo = &sh7760_i2c_algo;
	id->adap.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	id->adap.retries = 3;
	id->adap.algo_data = id;
	id->adap.dev.parent = &pdev->dev;
	FUNC17(id->adap.name, sizeof(id->adap.name),
		"SH7760 I2C at %08lx", (unsigned long)res->start);

	FUNC0(id, I2CMCR, 0);
	FUNC0(id, I2CMSR, 0);
	FUNC0(id, I2CMIER, 0);
	FUNC0(id, I2CMAR, 0);
	FUNC0(id, I2CSIER, 0);
	FUNC0(id, I2CSAR, 0);
	FUNC0(id, I2CSCR, 0);
	FUNC0(id, I2CSSR, 0);
	FUNC0(id, I2CFIER, 0);
	FUNC0(id, I2CFCR, FCR_RFRST | FCR_TFRST);
	FUNC0(id, I2CFSR, 0);

	ret = FUNC1(pd->speed_khz * 1000);
	if (ret < 0) {
		FUNC2(&pdev->dev, "invalid SCL clock: %dkHz\n",
			pd->speed_khz);
		goto out3;
	}
	FUNC0(id, I2CCCR, ret);

	if (FUNC15(id->irq, sh7760_i2c_irq, 0,
			SH7760_I2C_DEVNAME, id)) {
		FUNC2(&pdev->dev, "cannot get irq %d\n", id->irq);
		ret = -EBUSY;
		goto out3;
	}

	ret = FUNC6(&id->adap);
	if (ret < 0)
		goto out4;

	FUNC13(pdev, id);

	FUNC4(&pdev->dev, "%d kHz mmio %08x irq %d\n",
		 pd->speed_khz, res->start, id->irq);

	return 0;

out4:
	FUNC5(id->irq, id);
out3:
	FUNC8(id->iobase);
out2:
	FUNC14(id->ioarea);
	FUNC9(id->ioarea);
out1:
	FUNC9(id);
out0:
	return ret;
}