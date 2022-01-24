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
struct ipu_flow {scalar_t__ base; struct ipu_dp_priv* priv; } ;
struct ipu_dp_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ipu; } ;
struct ipu_dp {int /*<<< orphan*/  foreground; } ;

/* Variables and functions */
 scalar_t__ DP_COM_CONF ; 
 int /*<<< orphan*/  DP_COM_CONF_FG_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct ipu_flow* FUNC4 (struct ipu_dp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct ipu_dp *dp)
{
	struct ipu_flow *flow = FUNC4(dp);
	struct ipu_dp_priv *priv = flow->priv;
	u32 reg;

	if (!dp->foreground)
		return 0;

	FUNC1(&priv->mutex);

	reg = FUNC3(flow->base + DP_COM_CONF);
	reg |= DP_COM_CONF_FG_EN;
	FUNC5(reg, flow->base + DP_COM_CONF);

	FUNC0(priv->ipu, true);

	FUNC2(&priv->mutex);

	return 0;
}