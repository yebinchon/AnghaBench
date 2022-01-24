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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; TYPE_1__ dev; struct i2c_au1550_data* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  nr; } ;
struct i2c_au1550_data {int xfer_timeout; TYPE_2__ adap; int /*<<< orphan*/  psc_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  au1550_algo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 struct i2c_au1550_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_au1550_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_au1550_data*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct i2c_au1550_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC10(struct platform_device *pdev)
{
	struct i2c_au1550_data *priv;
	struct resource *r;
	int ret;

	priv = FUNC3(&pdev->dev, sizeof(struct i2c_au1550_data),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	r = FUNC7(pdev, IORESOURCE_MEM, 0);
	priv->psc_base = FUNC2(&pdev->dev, r);
	if (FUNC0(priv->psc_base))
		return FUNC1(priv->psc_base);

	priv->xfer_timeout = 200;

	priv->adap.nr = pdev->id;
	priv->adap.algo = &au1550_algo;
	priv->adap.algo_data = priv;
	priv->adap.dev.parent = &pdev->dev;
	FUNC9(priv->adap.name, "Au1xxx PSC I2C", sizeof(priv->adap.name));

	/* Now, set up the PSC for SMBus PIO mode. */
	FUNC6(priv);

	ret = FUNC4(&priv->adap);
	if (ret) {
		FUNC5(priv);
		return ret;
	}

	FUNC8(pdev, priv);
	return 0;
}