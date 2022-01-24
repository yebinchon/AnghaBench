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
struct xlnx_pr_decoupler_data {int /*<<< orphan*/  clk; } ;
struct fpga_bridge {struct xlnx_pr_decoupler_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_CMD_COUPLE ; 
 int /*<<< orphan*/  CTRL_CMD_DECOUPLE ; 
 int /*<<< orphan*/  CTRL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xlnx_pr_decoupler_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fpga_bridge *bridge, bool enable)
{
	int err;
	struct xlnx_pr_decoupler_data *priv = bridge->priv;

	err = FUNC1(priv->clk);
	if (err)
		return err;

	if (enable)
		FUNC2(priv, CTRL_OFFSET, CTRL_CMD_COUPLE);
	else
		FUNC2(priv, CTRL_OFFSET, CTRL_CMD_DECOUPLE);

	FUNC0(priv->clk);

	return 0;
}