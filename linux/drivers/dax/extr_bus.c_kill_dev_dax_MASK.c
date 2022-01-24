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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct dev_dax {struct dax_device* dax_dev; } ;
struct dax_device {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct dax_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dax_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct dev_dax *dev_dax)
{
	struct dax_device *dax_dev = dev_dax->dax_dev;
	struct inode *inode = FUNC0(dax_dev);

	FUNC1(dax_dev);
	FUNC2(inode->i_mapping, 0, 0, 1);
}