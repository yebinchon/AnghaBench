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
struct lpc32xx_kscan_drv {int /*<<< orphan*/  kscan_base; int /*<<< orphan*/  clk; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct lpc32xx_kscan_drv* FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev)
{
	struct lpc32xx_kscan_drv *kscandat = FUNC2(dev);
	int error;

	error = FUNC1(kscandat->clk);
	if (error)
		return error;

	FUNC3(1, FUNC0(kscandat->kscan_base));

	return 0;
}