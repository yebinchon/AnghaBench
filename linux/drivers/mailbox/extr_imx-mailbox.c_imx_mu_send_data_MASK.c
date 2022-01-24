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
typedef  int /*<<< orphan*/  u32 ;
struct mbox_chan {struct imx_mu_con_priv* con_priv; int /*<<< orphan*/  mbox; } ;
struct imx_mu_priv {int /*<<< orphan*/  dev; } ;
struct imx_mu_con_priv {int type; int /*<<< orphan*/  txdb_tasklet; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IMX_MU_TYPE_TX 129 
#define  IMX_MU_TYPE_TXDB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_mu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_mu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct imx_mu_priv* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mbox_chan *chan, void *data)
{
	struct imx_mu_priv *priv = FUNC7(chan->mbox);
	struct imx_mu_con_priv *cp = chan->con_priv;
	u32 *arg = data;

	switch (cp->type) {
	case IMX_MU_TYPE_TX:
		FUNC4(priv, *arg, FUNC2(cp->idx));
		FUNC5(priv, FUNC1(cp->idx), 0);
		break;
	case IMX_MU_TYPE_TXDB:
		FUNC5(priv, FUNC0(cp->idx), 0);
		FUNC6(&cp->txdb_tasklet);
		break;
	default:
		FUNC3(priv->dev, "Send data on wrong channel type: %d\n", cp->type);
		return -EINVAL;
	}

	return 0;
}