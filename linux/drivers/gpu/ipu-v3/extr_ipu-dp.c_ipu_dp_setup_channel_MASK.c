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
struct TYPE_4__ {scalar_t__ in_cs; } ;
struct TYPE_3__ {scalar_t__ in_cs; } ;
struct ipu_flow {int out_cs; TYPE_2__ foreground; TYPE_1__ background; struct ipu_dp_priv* priv; } ;
struct ipu_dp_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ipu; } ;
struct ipu_dp {int in_cs; int /*<<< orphan*/  foreground; } ;
typedef  enum ipu_color_space { ____Placeholder_ipu_color_space } ipu_color_space ;

/* Variables and functions */
 int /*<<< orphan*/  DP_COM_CONF_CSC_DEF_BG ; 
 int /*<<< orphan*/  DP_COM_CONF_CSC_DEF_BOTH ; 
 int /*<<< orphan*/  DP_COM_CONF_CSC_DEF_FG ; 
 scalar_t__ IPUV3_COLORSPACE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_flow*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ipu_flow* FUNC4 (struct ipu_dp*) ; 

int FUNC5(struct ipu_dp *dp,
		enum ipu_color_space in,
		enum ipu_color_space out)
{
	struct ipu_flow *flow = FUNC4(dp);
	struct ipu_dp_priv *priv = flow->priv;

	FUNC2(&priv->mutex);

	dp->in_cs = in;

	if (!dp->foreground)
		flow->out_cs = out;

	if (flow->foreground.in_cs == flow->background.in_cs) {
		/*
		 * foreground and background are of same colorspace, put
		 * colorspace converter after combining unit.
		 */
		FUNC0(flow, flow->foreground.in_cs, flow->out_cs,
				DP_COM_CONF_CSC_DEF_BOTH);
	} else {
		if (flow->foreground.in_cs == IPUV3_COLORSPACE_UNKNOWN ||
		    flow->foreground.in_cs == flow->out_cs)
			/*
			 * foreground identical to output, apply color
			 * conversion on background
			 */
			FUNC0(flow, flow->background.in_cs,
					flow->out_cs, DP_COM_CONF_CSC_DEF_BG);
		else
			FUNC0(flow, flow->foreground.in_cs,
					flow->out_cs, DP_COM_CONF_CSC_DEF_FG);
	}

	FUNC1(priv->ipu, true);

	FUNC3(&priv->mutex);

	return 0;
}