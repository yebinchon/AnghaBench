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
struct sun8i_tcon_top {int /*<<< orphan*/  rst; int /*<<< orphan*/  bus; struct clk_hw_onecell_data* clk_data; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct clk_hw_onecell_data {scalar_t__* hws; } ;

/* Variables and functions */
 int CLK_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct sun8i_tcon_top* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct device *master,
				  void *data)
{
	struct sun8i_tcon_top *tcon_top = FUNC2(dev);
	struct clk_hw_onecell_data *clk_data = tcon_top->clk_data;
	int i;

	FUNC3(dev->of_node);
	for (i = 0; i < CLK_NUM; i++)
		if (clk_data->hws[i])
			FUNC1(clk_data->hws[i]);

	FUNC0(tcon_top->bus);
	FUNC4(tcon_top->rst);
}