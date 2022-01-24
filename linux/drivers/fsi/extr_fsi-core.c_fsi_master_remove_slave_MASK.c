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
struct fsi_slave {int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsi_slave_remove_device ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct fsi_slave* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *arg)
{
	struct fsi_slave *slave = FUNC3(dev);

	FUNC1(dev, NULL, fsi_slave_remove_device);
	FUNC0(&slave->cdev, &slave->dev);
	FUNC2(dev);
	return 0;
}