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
typedef  size_t u32 ;
struct komeda_pipeline {int dual_link; int /*<<< orphan*/  of_node; void** of_output_links; int /*<<< orphan*/  of_output_port; struct clk* pxlclk; } ;
struct komeda_dev {size_t n_pipelines; struct komeda_pipeline** pipelines; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  KOMEDA_OF_PORT_OUTPUT ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int FUNC7 (struct device_node*,char*,size_t*) ; 

__attribute__((used)) static int FUNC8(struct komeda_dev *mdev, struct device_node *np)
{
	struct komeda_pipeline *pipe;
	struct clk *clk;
	u32 pipe_id;
	int ret = 0;

	ret = FUNC7(np, "reg", &pipe_id);
	if (ret != 0 || pipe_id >= mdev->n_pipelines)
		return -EINVAL;

	pipe = mdev->pipelines[pipe_id];

	clk = FUNC3(np, "pxclk");
	if (FUNC1(clk)) {
		FUNC0("get pxclk for pipeline %d failed!\n", pipe_id);
		return FUNC2(clk);
	}
	pipe->pxlclk = clk;

	/* enum ports */
	pipe->of_output_links[0] =
		FUNC5(np, KOMEDA_OF_PORT_OUTPUT, 0);
	pipe->of_output_links[1] =
		FUNC5(np, KOMEDA_OF_PORT_OUTPUT, 1);
	pipe->of_output_port =
		FUNC4(np, KOMEDA_OF_PORT_OUTPUT);

	pipe->dual_link = pipe->of_output_links[0] && pipe->of_output_links[1];
	pipe->of_node = FUNC6(np);

	return 0;
}