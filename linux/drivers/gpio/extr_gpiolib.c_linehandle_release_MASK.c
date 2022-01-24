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
struct linehandle_state {int numdescs; struct linehandle_state* label; int /*<<< orphan*/ * descs; struct gpio_device* gdev; } ;
struct inode {int dummy; } ;
struct gpio_device {int /*<<< orphan*/  dev; } ;
struct file {struct linehandle_state* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct linehandle_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filep)
{
	struct linehandle_state *lh = filep->private_data;
	struct gpio_device *gdev = lh->gdev;
	int i;

	for (i = 0; i < lh->numdescs; i++)
		FUNC0(lh->descs[i]);
	FUNC1(lh->label);
	FUNC1(lh);
	FUNC2(&gdev->dev);
	return 0;
}