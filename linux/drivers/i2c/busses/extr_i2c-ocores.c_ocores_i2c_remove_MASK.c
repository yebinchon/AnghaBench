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
typedef  int u8 ;
struct platform_device {int dummy; } ;
struct ocores_i2c {int /*<<< orphan*/  clk; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCI2C_CONTROL ; 
 int OCI2C_CTRL_EN ; 
 int OCI2C_CTRL_IEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ocores_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocores_i2c*,int /*<<< orphan*/ ,int) ; 
 struct ocores_i2c* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct ocores_i2c *i2c = FUNC5(pdev);
	u8 ctrl = FUNC3(i2c, OCI2C_CONTROL);

	/* disable i2c logic */
	ctrl &= ~(OCI2C_CTRL_EN | OCI2C_CTRL_IEN);
	FUNC4(i2c, OCI2C_CONTROL, ctrl);

	/* remove adapter & data */
	FUNC2(&i2c->adap);

	if (!FUNC0(i2c->clk))
		FUNC1(i2c->clk);

	return 0;
}