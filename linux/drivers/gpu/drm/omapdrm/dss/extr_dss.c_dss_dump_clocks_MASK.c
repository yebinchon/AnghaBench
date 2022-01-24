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
struct seq_file {int dummy; } ;
struct dss_device {int /*<<< orphan*/  dss_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSS_CLK_SRC_FCK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC5(struct dss_device *dss, struct seq_file *s)
{
	const char *fclk_name;
	unsigned long fclk_rate;

	if (FUNC2(dss))
		return;

	FUNC4(s, "- DSS -\n");

	fclk_name = FUNC1(DSS_CLK_SRC_FCK);
	fclk_rate = FUNC0(dss->dss_clk);

	FUNC4(s, "%s = %lu\n",
			fclk_name,
			fclk_rate);

	FUNC3(dss);
}