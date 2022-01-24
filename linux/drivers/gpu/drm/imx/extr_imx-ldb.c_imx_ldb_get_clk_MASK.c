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
struct imx_ldb {void** clk_pll; int /*<<< orphan*/  dev; void** clk; } ;
typedef  int /*<<< orphan*/  clkname ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC5(struct imx_ldb *ldb, int chno)
{
	char clkname[16];

	FUNC4(clkname, sizeof(clkname), "di%d", chno);
	ldb->clk[chno] = FUNC3(ldb->dev, clkname);
	if (FUNC0(ldb->clk[chno]))
		return FUNC1(ldb->clk[chno]);

	FUNC4(clkname, sizeof(clkname), "di%d_pll", chno);
	ldb->clk_pll[chno] = FUNC3(ldb->dev, clkname);

	return FUNC2(ldb->clk_pll[chno]);
}