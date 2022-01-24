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
struct rmi_driver_data {int /*<<< orphan*/ * irqdomain; } ;
struct rmi_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct rmi_driver_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rmi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rmi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rmi_device*) ; 
 struct rmi_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct rmi_device *rmi_dev = FUNC5(dev);
	struct rmi_driver_data *data = FUNC0(&rmi_dev->dev);

	FUNC2(rmi_dev, false);

	FUNC1(data->irqdomain);
	data->irqdomain = NULL;

	FUNC3(rmi_dev);
	FUNC4(rmi_dev);

	return 0;
}