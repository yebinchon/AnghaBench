#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_17__ {int /*<<< orphan*/  of_node; struct TYPE_17__* parent; } ;
struct TYPE_16__ {TYPE_4__ dev; int /*<<< orphan*/  nr; } ;
struct synquacer_i2c {int pclkrate; TYPE_1__ adapter; int /*<<< orphan*/  speed_khz; int /*<<< orphan*/  completion; TYPE_4__* dev; int /*<<< orphan*/  state; int /*<<< orphan*/  irq; int /*<<< orphan*/  base; int /*<<< orphan*/  pclk; } ;
struct resource {int dummy; } ;
struct platform_device {TYPE_4__ dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_IDLE ; 
 int SYNQUACER_I2C_MAX_CLK_RATE ; 
 int SYNQUACER_I2C_MIN_CLK_RATE ; 
 int /*<<< orphan*/  SYNQUACER_I2C_SPEED_FM ; 
 int /*<<< orphan*/  SYNQUACER_I2C_SPEED_SM ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,struct resource*) ; 
 struct synquacer_i2c* FUNC14 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct synquacer_i2c*) ; 
 int FUNC16 (TYPE_4__*) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,struct synquacer_i2c*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct synquacer_i2c*) ; 
 int /*<<< orphan*/  FUNC23 (struct synquacer_i2c*) ; 
 int /*<<< orphan*/  synquacer_i2c_isr ; 
 TYPE_1__ synquacer_i2c_ops ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct synquacer_i2c *i2c;
	struct resource *r;
	u32 bus_speed;
	int ret;

	i2c = FUNC14(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	bus_speed = FUNC16(&pdev->dev);
	if (!bus_speed)
		FUNC11(&pdev->dev, "clock-frequency",
					 &bus_speed);

	FUNC11(&pdev->dev, "socionext,pclk-rate",
				 &i2c->pclkrate);

	i2c->pclk = FUNC12(&pdev->dev, "pclk");
	if (FUNC2(i2c->pclk) && FUNC4(i2c->pclk) == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (!FUNC3(i2c->pclk)) {
		FUNC7(&pdev->dev, "clock source %p\n", i2c->pclk);

		ret = FUNC6(i2c->pclk);
		if (ret) {
			FUNC8(&pdev->dev, "failed to enable clock (%d)\n",
				ret);
			return ret;
		}
		i2c->pclkrate = FUNC5(i2c->pclk);
	}

	if (i2c->pclkrate < SYNQUACER_I2C_MIN_CLK_RATE ||
	    i2c->pclkrate > SYNQUACER_I2C_MAX_CLK_RATE) {
		FUNC8(&pdev->dev, "PCLK missing or out of range (%d)\n",
			i2c->pclkrate);
		return -EINVAL;
	}

	r = FUNC21(pdev, IORESOURCE_MEM, 0);
	i2c->base = FUNC13(&pdev->dev, r);
	if (FUNC2(i2c->base))
		return FUNC4(i2c->base);

	i2c->irq = FUNC20(pdev, 0);
	if (i2c->irq < 0) {
		FUNC8(&pdev->dev, "no IRQ resource found\n");
		return -ENODEV;
	}

	ret = FUNC15(&pdev->dev, i2c->irq, synquacer_i2c_isr,
			       0, FUNC10(&pdev->dev), i2c);
	if (ret < 0) {
		FUNC8(&pdev->dev, "cannot claim IRQ %d\n", i2c->irq);
		return ret;
	}

	i2c->state = STATE_IDLE;
	i2c->dev = &pdev->dev;
	i2c->adapter = synquacer_i2c_ops;
	FUNC18(&i2c->adapter, i2c);
	i2c->adapter.dev.parent = &pdev->dev;
	i2c->adapter.dev.of_node = pdev->dev.of_node;
	FUNC1(&i2c->adapter.dev, FUNC0(&pdev->dev));
	i2c->adapter.nr = pdev->id;
	FUNC19(&i2c->completion);

	if (bus_speed < 400000)
		i2c->speed_khz = SYNQUACER_I2C_SPEED_SM;
	else
		i2c->speed_khz = SYNQUACER_I2C_SPEED_FM;

	FUNC23(i2c);

	ret = FUNC17(&i2c->adapter);
	if (ret) {
		FUNC8(&pdev->dev, "failed to add bus to i2c core\n");
		return ret;
	}

	FUNC22(pdev, i2c);

	FUNC9(&pdev->dev, "%s: synquacer_i2c adapter\n",
		 FUNC10(&i2c->adapter.dev));

	return 0;
}