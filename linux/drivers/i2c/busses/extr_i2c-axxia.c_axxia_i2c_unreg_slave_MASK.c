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
struct i2c_client {int /*<<< orphan*/  adapter; } ;
struct axxia_i2c_dev {int /*<<< orphan*/ * slave; int /*<<< orphan*/  irq; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ GLOBAL_CONTROL ; 
 int /*<<< orphan*/  GLOBAL_MST_EN ; 
 scalar_t__ INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  INT_MST ; 
 struct axxia_i2c_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *slave)
{
	struct axxia_i2c_dev *idev = FUNC0(slave->adapter);

	/* Disable slave mode */
	FUNC2(GLOBAL_MST_EN, idev->base + GLOBAL_CONTROL);
	FUNC2(INT_MST, idev->base + INTERRUPT_ENABLE);

	FUNC1(idev->irq);

	idev->slave = NULL;

	return 0;
}