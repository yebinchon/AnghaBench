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
struct stm_file {TYPE_1__* stm; int /*<<< orphan*/  output; } ;
struct inode {int dummy; } ;
struct file {struct stm_file* private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm_file*) ; 
 struct stm_file* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  major_match ; 
 int FUNC4 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  stm_class ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct stm_file *stmf;
	struct device *dev;
	unsigned int major = FUNC1(inode);
	int err = -ENOMEM;

	dev = FUNC0(&stm_class, NULL, &major, major_match);
	if (!dev)
		return -ENODEV;

	stmf = FUNC3(sizeof(*stmf), GFP_KERNEL);
	if (!stmf)
		goto err_put_device;

	err = -ENODEV;
	FUNC6(&stmf->output);
	stmf->stm = FUNC7(dev);

	if (!FUNC8(stmf->stm->owner))
		goto err_free;

	file->private_data = stmf;

	return FUNC4(inode, file);

err_free:
	FUNC2(stmf);
err_put_device:
	/* matches class_find_device() above */
	FUNC5(dev);

	return err;
}