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
struct i2c_driver {int /*<<< orphan*/  (* shutdown ) (struct i2c_client*) ;} ;
struct i2c_client {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct i2c_client* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct i2c_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct i2c_client *client = FUNC0(dev);
	struct i2c_driver *driver;

	if (!client || !dev->driver)
		return;
	driver = FUNC2(dev->driver);
	if (driver->shutdown)
		driver->shutdown(client);
}