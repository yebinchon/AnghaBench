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
struct inode {int dummy; } ;
struct dax_device {struct inode inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dax_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *_dax_dev)
{
	struct dax_device *dax_dev = _dax_dev;
	struct inode *inode = &dax_dev->inode;

	FUNC1(dax_dev, 0, sizeof(*dax_dev));
	FUNC0(inode);
}