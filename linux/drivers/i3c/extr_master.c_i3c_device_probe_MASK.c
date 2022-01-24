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
struct i3c_driver {int (* probe ) (struct i3c_device*) ;} ;
struct i3c_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct i3c_device* FUNC0 (struct device*) ; 
 struct i3c_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i3c_device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct i3c_device *i3cdev = FUNC0(dev);
	struct i3c_driver *driver = FUNC1(dev->driver);

	return driver->probe(i3cdev);
}