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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct lpi2c_imx_struct {TYPE_2__ adapter; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ LPI2C_MCR ; 
 int /*<<< orphan*/  MCR_MEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct lpi2c_imx_struct *lpi2c_imx)
{
	u32 temp;

	temp = FUNC2(lpi2c_imx->base + LPI2C_MCR);
	temp &= ~MCR_MEN;
	FUNC3(temp, lpi2c_imx->base + LPI2C_MCR);

	FUNC0(lpi2c_imx->adapter.dev.parent);
	FUNC1(lpi2c_imx->adapter.dev.parent);

	return 0;
}