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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct cr0014114 {size_t count; int do_recount; int /*<<< orphan*/  work; int /*<<< orphan*/ * dev; scalar_t__ delay; struct spi_device* spi; int /*<<< orphan*/  lock; void* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_FW_DELAY_MSEC ; 
 int /*<<< orphan*/  CR_RECOUNT_DELAY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cr0014114*) ; 
 int /*<<< orphan*/  cr0014114_recount_work ; 
 int FUNC2 (struct cr0014114*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  leds ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct cr0014114*) ; 
 size_t FUNC10 (struct cr0014114*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct cr0014114	*priv;
	size_t			count;
	int			ret;

	count = FUNC4(&spi->dev);
	if (!count) {
		FUNC3(&spi->dev, "LEDs are not defined in device tree!");
		return -ENODEV;
	}

	priv = FUNC5(&spi->dev, FUNC10(priv, leds, count),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->buf = FUNC5(&spi->dev, count + 2, GFP_KERNEL);
	if (!priv->buf)
		return -ENOMEM;

	FUNC7(&priv->lock);
	FUNC0(&priv->work, cr0014114_recount_work);
	priv->count	= count;
	priv->dev	= &spi->dev;
	priv->spi	= spi;
	priv->delay	= jiffies -
			  FUNC6(CR_FW_DELAY_MSEC);

	priv->do_recount = true;
	ret = FUNC2(priv);
	if (ret) {
		FUNC3(priv->dev, "first recount failed %d\n", ret);
		return ret;
	}

	priv->do_recount = true;
	ret = FUNC2(priv);
	if (ret) {
		FUNC3(priv->dev, "second recount failed %d\n", ret);
		return ret;
	}

	ret = FUNC1(priv);
	if (ret)
		return ret;

	/* setup recount work to workaround buggy firmware */
	FUNC8(&priv->work, CR_RECOUNT_DELAY);

	FUNC9(spi, priv);

	return 0;
}