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
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {int phys_port_cnt; TYPE_1__ dev; } ;
struct mlx4_ib_dev {void* iov_parent; void* ports_parent; TYPE_2__ ib_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct mlx4_ib_dev*,int) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (struct mlx4_ib_dev*) ; 

int FUNC7(struct mlx4_ib_dev *dev)
{
	int i;
	int ret = 0;

	if (!FUNC4(dev->dev))
		return 0;

	dev->iov_parent = FUNC1("iov", &dev->ib_dev.dev.kobj);
	if (!dev->iov_parent) {
		ret = -ENOMEM;
		goto err;
	}
	dev->ports_parent =
		FUNC1("ports",
				       FUNC2(dev->iov_parent));
	if (!dev->ports_parent) {
		ret = -ENOMEM;
		goto err_ports;
	}

	for (i = 1; i <= dev->ib_dev.phys_port_cnt; ++i) {
		ret = FUNC0(dev, i);
		if (ret)
			goto err_add_entries;
	}

	ret = FUNC6(dev);
	if (ret)
		goto err_add_entries;
	return 0;

err_add_entries:
	FUNC3(dev->ports_parent);

err_ports:
	FUNC3(dev->iov_parent);
err:
	FUNC5("mlx4_ib_device_register_sysfs error (%d)\n", ret);
	return ret;
}