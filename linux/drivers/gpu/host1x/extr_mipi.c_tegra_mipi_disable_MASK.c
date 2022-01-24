#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tegra_mipi_device {TYPE_1__* mipi; } ;
struct TYPE_2__ {scalar_t__ usage_count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(struct tegra_mipi_device *dev)
{
	int err = 0;

	FUNC0(&dev->mipi->lock);

	if (--dev->mipi->usage_count == 0)
		err = FUNC2(dev->mipi);

	FUNC1(&dev->mipi->lock);

	return err;

}