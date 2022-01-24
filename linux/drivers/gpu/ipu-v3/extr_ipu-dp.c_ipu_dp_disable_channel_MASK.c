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
typedef  int u32 ;
struct ipu_flow {scalar_t__ base; struct ipu_dp_priv* priv; } ;
struct ipu_dp_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ipu; } ;
struct ipu_dp {int /*<<< orphan*/  foreground; int /*<<< orphan*/  in_cs; } ;

/* Variables and functions */
 scalar_t__ DP_COM_CONF ; 
 int DP_COM_CONF_CSC_DEF_BG ; 
 int DP_COM_CONF_CSC_DEF_BOTH ; 
 int DP_COM_CONF_CSC_DEF_MASK ; 
 int DP_COM_CONF_FG_EN ; 
 scalar_t__ DP_FG_POS ; 
 int /*<<< orphan*/  IPUV3_COLORSPACE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 struct ipu_flow* FUNC4 (struct ipu_dp*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

void FUNC6(struct ipu_dp *dp, bool sync)
{
	struct ipu_flow *flow = FUNC4(dp);
	struct ipu_dp_priv *priv = flow->priv;
	u32 reg, csc;

	dp->in_cs = IPUV3_COLORSPACE_UNKNOWN;

	if (!dp->foreground)
		return;

	FUNC1(&priv->mutex);

	reg = FUNC3(flow->base + DP_COM_CONF);
	csc = reg & DP_COM_CONF_CSC_DEF_MASK;
	reg &= ~DP_COM_CONF_CSC_DEF_MASK;
	if (csc == DP_COM_CONF_CSC_DEF_BOTH || csc == DP_COM_CONF_CSC_DEF_BG)
		reg |= DP_COM_CONF_CSC_DEF_BG;

	reg &= ~DP_COM_CONF_FG_EN;
	FUNC5(reg, flow->base + DP_COM_CONF);

	FUNC5(0, flow->base + DP_FG_POS);
	FUNC0(priv->ipu, sync);

	FUNC2(&priv->mutex);
}