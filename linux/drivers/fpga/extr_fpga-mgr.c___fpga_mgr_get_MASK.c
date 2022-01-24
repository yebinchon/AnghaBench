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
struct fpga_manager {int dummy; } ;
struct device {TYPE_2__* parent; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct fpga_manager* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct fpga_manager* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fpga_manager *FUNC4(struct device *dev)
{
	struct fpga_manager *mgr;

	mgr = FUNC2(dev);

	if (!FUNC3(dev->parent->driver->owner))
		goto err_dev;

	return mgr;

err_dev:
	FUNC1(dev);
	return FUNC0(-ENODEV);
}