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
struct wmt_i2c_dev {int /*<<< orphan*/  adapter; int /*<<< orphan*/  clk; scalar_t__ base; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_IMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wmt_i2c_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct wmt_i2c_dev *i2c_dev = FUNC2(pdev);

	/* Disable interrupts, clock and delete adapter */
	FUNC3(0, i2c_dev->base + REG_IMR);
	FUNC0(i2c_dev->clk);
	FUNC1(&i2c_dev->adapter);

	return 0;
}