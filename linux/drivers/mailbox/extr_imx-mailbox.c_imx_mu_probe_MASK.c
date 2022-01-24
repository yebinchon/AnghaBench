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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {unsigned int num_chans; int txdone_irq; int /*<<< orphan*/  of_xlate; TYPE_1__* chans; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct imx_mu_priv {scalar_t__ irq; TYPE_2__ mbox; TYPE_1__* mbox_chans; int /*<<< orphan*/  xcr_lock; int /*<<< orphan*/  side_b; struct imx_mu_con_priv* con_priv; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * base; struct device* dev; } ;
struct imx_mu_con_priv {unsigned int idx; unsigned int type; int /*<<< orphan*/  irq_desc; TYPE_1__* chan; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct imx_mu_con_priv* con_priv; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int IMX_MU_CHANS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 struct imx_mu_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct imx_mu_priv*) ; 
 int /*<<< orphan*/  imx_mu_ops ; 
 int /*<<< orphan*/  imx_mu_xlate ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*) ; 
 scalar_t__ FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct imx_mu_priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct imx_mu_priv *priv;
	unsigned int i;
	int ret;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;

	priv->base = FUNC7(pdev, 0);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->irq = FUNC10(pdev, 0);
	if (priv->irq < 0)
		return priv->irq;

	priv->clk = FUNC4(dev, NULL);
	if (FUNC0(priv->clk)) {
		if (FUNC1(priv->clk) != -ENOENT)
			return FUNC1(priv->clk);

		priv->clk = NULL;
	}

	ret = FUNC2(priv->clk);
	if (ret) {
		FUNC3(dev, "Failed to enable clock\n");
		return ret;
	}

	for (i = 0; i < IMX_MU_CHANS; i++) {
		struct imx_mu_con_priv *cp = &priv->con_priv[i];

		cp->idx = i % 4;
		cp->type = i >> 2;
		cp->chan = &priv->mbox_chans[i];
		priv->mbox_chans[i].con_priv = cp;
		FUNC12(cp->irq_desc, sizeof(cp->irq_desc),
			 "imx_mu_chan[%i-%i]", cp->type, cp->idx);
	}

	priv->side_b = FUNC9(np, "fsl,mu-side-b");

	FUNC13(&priv->xcr_lock);

	priv->mbox.dev = dev;
	priv->mbox.ops = &imx_mu_ops;
	priv->mbox.chans = priv->mbox_chans;
	priv->mbox.num_chans = IMX_MU_CHANS;
	priv->mbox.of_xlate = imx_mu_xlate;
	priv->mbox.txdone_irq = true;

	FUNC11(pdev, priv);

	FUNC8(priv);

	return FUNC6(dev, &priv->mbox);
}