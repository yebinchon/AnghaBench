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
struct imx_mu_priv {int /*<<< orphan*/  irq; } ;
struct imx_mu_con_priv {scalar_t__ type; int /*<<< orphan*/  idx; int /*<<< orphan*/  txdb_tasklet; } ;

/* Variables and functions */
 scalar_t__ IMX_MU_TYPE_TXDB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_mu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct imx_mu_priv* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mbox_chan *chan)
{
	struct imx_mu_priv *priv = FUNC6(chan->mbox);
	struct imx_mu_con_priv *cp = chan->con_priv;

	if (cp->type == IMX_MU_TYPE_TXDB)
		FUNC5(&cp->txdb_tasklet);

	FUNC4(priv, 0, FUNC2(cp->idx) |
		       FUNC1(cp->idx) | FUNC0(cp->idx));

	FUNC3(priv->irq, chan);
}