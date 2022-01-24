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
struct dss_device {unsigned long dss_clk_rate; int /*<<< orphan*/  dss_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC4(struct dss_device *dss, unsigned long rate)
{
	int r;

	FUNC0("set fck to %lu\n", rate);

	r = FUNC3(dss->dss_clk, rate);
	if (r)
		return r;

	dss->dss_clk_rate = FUNC2(dss->dss_clk);

	FUNC1(dss->dss_clk_rate != rate, "clk rate mismatch: %lu != %lu",
		  dss->dss_clk_rate, rate);

	return 0;
}