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
struct mbox_chan {struct imx_mu_con_priv* con_priv; int /*<<< orphan*/  mbox; } ;
struct imx_mu_priv {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct imx_mu_con_priv {int type; int /*<<< orphan*/  idx; int /*<<< orphan*/  irq_desc; int /*<<< orphan*/  txdb_tasklet; } ;

/* Variables and functions */
#define  IMX_MU_TYPE_RX 129 
#define  IMX_MU_TYPE_RXDB 128 
 int IMX_MU_TYPE_TXDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_mu_isr ; 
 int /*<<< orphan*/  imx_mu_txdb_tasklet ; 
 int /*<<< orphan*/  FUNC3 (struct imx_mu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 struct imx_mu_priv* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mbox_chan *chan)
{
	struct imx_mu_priv *priv = FUNC6(chan->mbox);
	struct imx_mu_con_priv *cp = chan->con_priv;
	int ret;

	if (cp->type == IMX_MU_TYPE_TXDB) {
		/* Tx doorbell don't have ACK support */
		FUNC5(&cp->txdb_tasklet, imx_mu_txdb_tasklet,
			     (unsigned long)cp);
		return 0;
	}

	ret = FUNC4(priv->irq, imx_mu_isr, IRQF_SHARED |
			  IRQF_NO_SUSPEND, cp->irq_desc, chan);
	if (ret) {
		FUNC2(priv->dev,
			"Unable to acquire IRQ %d\n", priv->irq);
		return ret;
	}

	switch (cp->type) {
	case IMX_MU_TYPE_RX:
		FUNC3(priv, FUNC1(cp->idx), 0);
		break;
	case IMX_MU_TYPE_RXDB:
		FUNC3(priv, FUNC0(cp->idx), 0);
		break;
	default:
		break;
	}

	return 0;
}