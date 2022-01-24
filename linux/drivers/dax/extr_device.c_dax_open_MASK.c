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
struct inode {int /*<<< orphan*/  i_flags; TYPE_1__* i_mapping; } ;
struct file {struct dev_dax* private_data; TYPE_1__* f_mapping; int /*<<< orphan*/  f_wb_err; } ;
struct dev_dax {int /*<<< orphan*/  dev; } ;
struct dax_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_DAX ; 
 struct dev_dax* FUNC0 (struct dax_device*) ; 
 struct inode* FUNC1 (struct dax_device*) ; 
 int /*<<< orphan*/  dev_dax_aops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct dax_device* FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct dax_device *dax_dev = FUNC4(inode);
	struct inode *__dax_inode = FUNC1(dax_dev);
	struct dev_dax *dev_dax = FUNC0(dax_dev);

	FUNC2(&dev_dax->dev, "trace\n");
	inode->i_mapping = __dax_inode->i_mapping;
	inode->i_mapping->host = __dax_inode;
	inode->i_mapping->a_ops = &dev_dax_aops;
	filp->f_mapping = inode->i_mapping;
	filp->f_wb_err = FUNC3(filp->f_mapping);
	filp->private_data = dev_dax;
	inode->i_flags = S_DAX;

	return 0;
}