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
struct mtk_hdmi {int /*<<< orphan*/ * clk; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mtk_hdmi_clk_names ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mtk_hdmi *hdmi,
				struct device_node *np)
{
	int i;

	for (i = 0; i < FUNC0(mtk_hdmi_clk_names); i++) {
		hdmi->clk[i] = FUNC3(np,
						  mtk_hdmi_clk_names[i]);
		if (FUNC1(hdmi->clk[i]))
			return FUNC2(hdmi->clk[i]);
	}
	return 0;
}