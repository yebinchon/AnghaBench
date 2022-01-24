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
struct ipu_di {int /*<<< orphan*/  module; int /*<<< orphan*/  ipu; int /*<<< orphan*/  clk_di_pixel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct ipu_di *di)
{
	int ret;

	FUNC1(FUNC0(di->clk_di_pixel));

	ret = FUNC2(di->clk_di_pixel);
	if (ret)
		return ret;

	FUNC3(di->ipu, di->module);

	return 0;
}