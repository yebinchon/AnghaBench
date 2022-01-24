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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dfl_fpga_cdev {int /*<<< orphan*/  lock; int /*<<< orphan*/  released_port_num; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 struct platform_device* FUNC0 (struct dfl_fpga_cdev*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dfl_fpga_check_port_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct dfl_fpga_cdev *cdev, int port_id)
{
	struct platform_device *port_pdev;
	int ret = -ENODEV;

	FUNC4(&cdev->lock);
	port_pdev = FUNC0(cdev, &port_id,
					      dfl_fpga_check_port_id);
	if (!port_pdev)
		goto unlock_exit;

	if (FUNC2(&port_pdev->dev)) {
		ret = -EBUSY;
		goto put_dev_exit;
	}

	ret = FUNC6(port_pdev);
	if (ret)
		goto put_dev_exit;

	FUNC3(FUNC1(&port_pdev->dev));
	cdev->released_port_num--;
put_dev_exit:
	FUNC7(&port_pdev->dev);
unlock_exit:
	FUNC5(&cdev->lock);
	return ret;
}