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
typedef  scalar_t__ u32 ;
struct mbox_chan {struct imx_mu_con_priv* con_priv; int /*<<< orphan*/  mbox; } ;
struct imx_mu_priv {int /*<<< orphan*/  dev; } ;
struct imx_mu_con_priv {int type; int /*<<< orphan*/  idx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
#define  IMX_MU_TYPE_RX 130 
#define  IMX_MU_TYPE_RXDB 129 
#define  IMX_MU_TYPE_TX 128 
 int /*<<< orphan*/  IMX_MU_xCR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMX_MU_xSR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct imx_mu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct imx_mu_priv*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct imx_mu_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct mbox_chan*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct mbox_chan*,int /*<<< orphan*/ ) ; 
 struct imx_mu_priv* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *p)
{
	struct mbox_chan *chan = p;
	struct imx_mu_priv *priv = FUNC13(chan->mbox);
	struct imx_mu_con_priv *cp = chan->con_priv;
	u32 val, ctrl, dat;

	ctrl = FUNC8(priv, IMX_MU_xCR);
	val = FUNC8(priv, IMX_MU_xSR);

	switch (cp->type) {
	case IMX_MU_TYPE_TX:
		val &= FUNC6(cp->idx) &
			(ctrl & FUNC2(cp->idx));
		break;
	case IMX_MU_TYPE_RX:
		val &= FUNC5(cp->idx) &
			(ctrl & FUNC1(cp->idx));
		break;
	case IMX_MU_TYPE_RXDB:
		val &= FUNC4(cp->idx) &
			(ctrl & FUNC0(cp->idx));
		break;
	default:
		break;
	}

	if (!val)
		return IRQ_NONE;

	if (val == FUNC6(cp->idx)) {
		FUNC10(priv, 0, FUNC2(cp->idx));
		FUNC12(chan, 0);
	} else if (val == FUNC5(cp->idx)) {
		dat = FUNC8(priv, FUNC3(cp->idx));
		FUNC11(chan, (void *)&dat);
	} else if (val == FUNC4(cp->idx)) {
		FUNC9(priv, FUNC4(cp->idx), IMX_MU_xSR);
		FUNC11(chan, NULL);
	} else {
		FUNC7(priv->dev, "Not handled interrupt\n");
		return IRQ_NONE;
	}

	return IRQ_HANDLED;
}