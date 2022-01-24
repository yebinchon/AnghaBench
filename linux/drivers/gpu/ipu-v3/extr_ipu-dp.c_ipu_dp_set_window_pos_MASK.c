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
typedef  int u16 ;
struct ipu_flow {scalar_t__ base; struct ipu_dp_priv* priv; } ;
struct ipu_dp_priv {int /*<<< orphan*/  ipu; } ;
struct ipu_dp {int dummy; } ;

/* Variables and functions */
 scalar_t__ DP_FG_POS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct ipu_flow* FUNC1 (struct ipu_dp*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

int FUNC3(struct ipu_dp *dp, u16 x_pos, u16 y_pos)
{
	struct ipu_flow *flow = FUNC1(dp);
	struct ipu_dp_priv *priv = flow->priv;

	FUNC2((x_pos << 16) | y_pos, flow->base + DP_FG_POS);

	FUNC0(priv->ipu, true);

	return 0;
}