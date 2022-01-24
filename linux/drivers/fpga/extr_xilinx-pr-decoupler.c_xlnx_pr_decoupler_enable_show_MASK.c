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
struct xlnx_pr_decoupler_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  io_base; } ;
struct fpga_bridge {struct xlnx_pr_decoupler_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fpga_bridge *bridge)
{
	const struct xlnx_pr_decoupler_data *priv = bridge->priv;
	u32 status;
	int err;

	err = FUNC1(priv->clk);
	if (err)
		return err;

	status = FUNC2(priv->io_base);

	FUNC0(priv->clk);

	return !status;
}