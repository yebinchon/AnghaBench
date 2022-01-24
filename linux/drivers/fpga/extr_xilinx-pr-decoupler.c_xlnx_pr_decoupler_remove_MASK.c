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
struct platform_device {int dummy; } ;
struct fpga_bridge {struct xlnx_pr_decoupler_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fpga_bridge*) ; 
 struct fpga_bridge* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct fpga_bridge *bridge = FUNC2(pdev);
	struct xlnx_pr_decoupler_data *p = bridge->priv;

	FUNC1(bridge);

	FUNC0(p->clk);

	return 0;
}