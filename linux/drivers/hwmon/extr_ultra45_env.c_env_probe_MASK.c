#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {int /*<<< orphan*/ * resource; TYPE_1__ dev; } ;
struct env {int /*<<< orphan*/  regs; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_SIZE ; 
 struct env* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  env_group ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct env*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *op)
{
	struct env *p = FUNC2(&op->dev, sizeof(*p), GFP_KERNEL);
	int err = -ENOMEM;

	if (!p)
		goto out;

	FUNC7(&p->lock);

	p->regs = FUNC4(&op->resource[0], 0, REG_SIZE, "pic16f747");
	if (!p->regs)
		goto out;

	err = FUNC8(&op->dev.kobj, &env_group);
	if (err)
		goto out_iounmap;

	p->hwmon_dev = FUNC3(&op->dev);
	if (FUNC0(p->hwmon_dev)) {
		err = FUNC1(p->hwmon_dev);
		goto out_sysfs_remove_group;
	}

	FUNC6(op, p);
	err = 0;

out:
	return err;

out_sysfs_remove_group:
	FUNC9(&op->dev.kobj, &env_group);

out_iounmap:
	FUNC5(&op->resource[0], p->regs, REG_SIZE);

	goto out;
}