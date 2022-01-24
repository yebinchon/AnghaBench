#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct lpi2c_imx_struct {TYPE_2__ adapter; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ LPI2C_MCR ; 
 unsigned int MCR_MEN ; 
 unsigned int MCR_RST ; 
 int FUNC0 (struct lpi2c_imx_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct lpi2c_imx_struct *lpi2c_imx)
{
	unsigned int temp;
	int ret;

	ret = FUNC1(lpi2c_imx->adapter.dev.parent);
	if (ret < 0)
		return ret;

	temp = MCR_RST;
	FUNC5(temp, lpi2c_imx->base + LPI2C_MCR);
	FUNC5(0, lpi2c_imx->base + LPI2C_MCR);

	ret = FUNC0(lpi2c_imx);
	if (ret)
		goto rpm_put;

	temp = FUNC4(lpi2c_imx->base + LPI2C_MCR);
	temp |= MCR_MEN;
	FUNC5(temp, lpi2c_imx->base + LPI2C_MCR);

	return 0;

rpm_put:
	FUNC2(lpi2c_imx->adapter.dev.parent);
	FUNC3(lpi2c_imx->adapter.dev.parent);

	return ret;
}