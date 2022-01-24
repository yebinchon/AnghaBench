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
struct dw_i2c_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * slave; int /*<<< orphan*/  irq; int /*<<< orphan*/  (* disable ) (struct dw_i2c_dev*) ;int /*<<< orphan*/  (* disable_int ) (struct dw_i2c_dev*) ;} ;

/* Variables and functions */
 struct dw_i2c_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *slave)
{
	struct dw_i2c_dev *dev = FUNC0(slave->adapter);

	dev->disable_int(dev);
	dev->disable(dev);
	FUNC4(dev->irq);
	dev->slave = NULL;
	FUNC1(dev->dev);

	return 0;
}