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
struct lineevent_state {struct lineevent_state* label; int /*<<< orphan*/  desc; int /*<<< orphan*/  irq; struct gpio_device* gdev; } ;
struct inode {int dummy; } ;
struct gpio_device {int /*<<< orphan*/  dev; } ;
struct file {struct lineevent_state* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lineevent_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lineevent_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filep)
{
	struct lineevent_state *le = filep->private_data;
	struct gpio_device *gdev = le->gdev;

	FUNC0(le->irq, le);
	FUNC1(le->desc);
	FUNC2(le->label);
	FUNC2(le);
	FUNC3(&gdev->dev);
	return 0;
}