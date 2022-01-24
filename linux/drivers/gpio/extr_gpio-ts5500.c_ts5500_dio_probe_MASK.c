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
struct TYPE_4__ {char const* label; int base; void* ngpio; int /*<<< orphan*/  to_irq; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; struct device* parent; int /*<<< orphan*/  owner; } ;
struct ts5500_priv {char const* hwirq; TYPE_2__ gpio_chip; int /*<<< orphan*/  lock; void* pinout; } ;
struct resource {char const* start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
typedef  enum ts5500_blocks { ____Placeholder_ts5500_blocks } ts5500_blocks ;
struct TYPE_3__ {int driver_data; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  THIS_MODULE ; 
#define  TS5500_DIO1 131 
#define  TS5500_DIO2 130 
#define  TS5500_LCD 129 
#define  TS5600_LCD 128 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 char* FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,TYPE_2__*,struct ts5500_priv*) ; 
 struct ts5500_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int,int,char const*) ; 
 int hex7d_reserved ; 
 TYPE_1__* FUNC7 (struct platform_device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct ts5500_priv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 void* ts5500_dio1 ; 
 void* ts5500_dio2 ; 
 int FUNC14 (struct ts5500_priv*) ; 
 int /*<<< orphan*/  ts5500_gpio_get ; 
 int /*<<< orphan*/  ts5500_gpio_input ; 
 int /*<<< orphan*/  ts5500_gpio_output ; 
 int /*<<< orphan*/  ts5500_gpio_set ; 
 int /*<<< orphan*/  ts5500_gpio_to_irq ; 
 void* ts5500_lcd ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	enum ts5500_blocks block = FUNC7(pdev)->driver_data;
	struct device *dev = &pdev->dev;
	const char *name = FUNC3(dev);
	struct ts5500_priv *priv;
	struct resource *res;
	unsigned long flags;
	int ret;

	res = FUNC8(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC2(dev, "missing IRQ resource\n");
		return -EINVAL;
	}

	priv = FUNC5(dev, sizeof(struct ts5500_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC9(pdev, priv);
	priv->hwirq = res->start;
	FUNC10(&priv->lock);

	priv->gpio_chip.owner = THIS_MODULE;
	priv->gpio_chip.label = name;
	priv->gpio_chip.parent = dev;
	priv->gpio_chip.direction_input = ts5500_gpio_input;
	priv->gpio_chip.direction_output = ts5500_gpio_output;
	priv->gpio_chip.get = ts5500_gpio_get;
	priv->gpio_chip.set = ts5500_gpio_set;
	priv->gpio_chip.to_irq = ts5500_gpio_to_irq;
	priv->gpio_chip.base = -1;

	switch (block) {
	case TS5500_DIO1:
		priv->pinout = ts5500_dio1;
		priv->gpio_chip.ngpio = FUNC0(ts5500_dio1);

		if (!FUNC6(dev, 0x7a, 3, name)) {
			FUNC2(dev, "failed to request %s ports\n", name);
			return -EBUSY;
		}
		break;
	case TS5500_DIO2:
		priv->pinout = ts5500_dio2;
		priv->gpio_chip.ngpio = FUNC0(ts5500_dio2);

		if (!FUNC6(dev, 0x7e, 2, name)) {
			FUNC2(dev, "failed to request %s ports\n", name);
			return -EBUSY;
		}

		if (hex7d_reserved)
			break;

		if (!FUNC6(dev, 0x7d, 1, name)) {
			FUNC2(dev, "failed to request %s 7D\n", name);
			return -EBUSY;
		}

		hex7d_reserved = true;
		break;
	case TS5500_LCD:
	case TS5600_LCD:
		priv->pinout = ts5500_lcd;
		priv->gpio_chip.ngpio = FUNC0(ts5500_lcd);

		if (!FUNC6(dev, 0x72, 2, name)) {
			FUNC2(dev, "failed to request %s ports\n", name);
			return -EBUSY;
		}

		if (!hex7d_reserved) {
			if (!FUNC6(dev, 0x7d, 1, name)) {
				FUNC2(dev, "failed to request %s 7D\n", name);
				return -EBUSY;
			}

			hex7d_reserved = true;
		}

		/* Ensure usage of LCD port as DIO */
		FUNC11(&priv->lock, flags);
		FUNC13(FUNC1(4), 0x7d);
		FUNC12(&priv->lock, flags);
		break;
	}

	ret = FUNC4(dev, &priv->gpio_chip, priv);
	if (ret) {
		FUNC2(dev, "failed to register the gpio chip\n");
		return ret;
	}

	ret = FUNC14(priv);
	if (ret) {
		FUNC2(dev, "invalid interrupt %d\n", priv->hwirq);
		return ret;
	}

	return 0;
}