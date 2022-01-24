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
struct platform_device {int dummy; } ;
struct dfl_fpga_cdev {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (struct dfl_fpga_cdev*,void*,int (*) (struct platform_device*,void*)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct platform_device *
FUNC3(struct dfl_fpga_cdev *cdev, void *data,
			int (*match)(struct platform_device *, void *))
{
	struct platform_device *pdev;

	FUNC1(&cdev->lock);
	pdev = FUNC0(cdev, data, match);
	FUNC2(&cdev->lock);

	return pdev;
}