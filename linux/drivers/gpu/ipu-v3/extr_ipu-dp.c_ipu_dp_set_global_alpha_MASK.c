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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct ipu_flow {scalar_t__ base; struct ipu_dp_priv* priv; } ;
struct ipu_dp_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ipu; } ;
struct ipu_dp {int dummy; } ;

/* Variables and functions */
 scalar_t__ DP_COM_CONF ; 
 int DP_COM_CONF_GWAM ; 
 int DP_COM_CONF_GWSEL ; 
 scalar_t__ DP_GRAPH_WIND_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 struct ipu_flow* FUNC4 (struct ipu_dp*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

int FUNC6(struct ipu_dp *dp, bool enable,
		u8 alpha, bool bg_chan)
{
	struct ipu_flow *flow = FUNC4(dp);
	struct ipu_dp_priv *priv = flow->priv;
	u32 reg;

	FUNC1(&priv->mutex);

	reg = FUNC3(flow->base + DP_COM_CONF);
	if (bg_chan)
		reg &= ~DP_COM_CONF_GWSEL;
	else
		reg |= DP_COM_CONF_GWSEL;
	FUNC5(reg, flow->base + DP_COM_CONF);

	if (enable) {
		reg = FUNC3(flow->base + DP_GRAPH_WIND_CTRL) & 0x00FFFFFFL;
		FUNC5(reg | ((u32) alpha << 24),
			     flow->base + DP_GRAPH_WIND_CTRL);

		reg = FUNC3(flow->base + DP_COM_CONF);
		FUNC5(reg | DP_COM_CONF_GWAM, flow->base + DP_COM_CONF);
	} else {
		reg = FUNC3(flow->base + DP_COM_CONF);
		FUNC5(reg & ~DP_COM_CONF_GWAM, flow->base + DP_COM_CONF);
	}

	FUNC0(priv->ipu, true);

	FUNC2(&priv->mutex);

	return 0;
}