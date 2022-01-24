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
struct at91_twi_dev {int /*<<< orphan*/  dev; scalar_t__ smr; int /*<<< orphan*/ * slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_twi_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct at91_twi_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *slave)
{
	struct at91_twi_dev *dev = FUNC3(slave->adapter);

	FUNC0(!dev->slave);

	FUNC2(dev->dev, "leaving slave mode\n");

	dev->slave = NULL;
	dev->smr = 0;

	FUNC1(dev);

	FUNC4(dev->dev);

	return 0;
}