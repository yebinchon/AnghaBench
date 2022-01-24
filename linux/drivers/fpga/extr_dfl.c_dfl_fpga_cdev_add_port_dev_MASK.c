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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dfl_fpga_cdev {int /*<<< orphan*/  lock; int /*<<< orphan*/  port_dev_list; } ;
struct dfl_feature_platform_data {TYPE_1__* dev; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct dfl_feature_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dfl_fpga_cdev *cdev,
				       struct platform_device *port)
{
	struct dfl_feature_platform_data *pdata = FUNC0(&port->dev);

	FUNC3(&cdev->lock);
	FUNC2(&pdata->node, &cdev->port_dev_list);
	FUNC1(&pdata->dev->dev);
	FUNC4(&cdev->lock);
}