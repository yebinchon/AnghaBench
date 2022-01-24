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
struct platform_device {int dummy; } ;
struct fpga_bridge {struct altera_hps2fpga_data* priv; } ;
struct altera_hps2fpga_data {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fpga_bridge*) ; 
 struct fpga_bridge* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct fpga_bridge *bridge = FUNC2(pdev);
	struct altera_hps2fpga_data *priv = bridge->priv;

	FUNC1(bridge);

	FUNC0(priv->clk);

	return 0;
}