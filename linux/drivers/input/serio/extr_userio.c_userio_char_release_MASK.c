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
struct userio_device {struct userio_device* serio; scalar_t__ running; } ;
struct inode {int dummy; } ;
struct file {struct userio_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct userio_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct userio_device*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct userio_device *userio = file->private_data;

	if (userio->running) {
		/*
		 * Don't free the serio port here, serio_unregister_port()
		 * does it for us.
		 */
		FUNC1(userio->serio);
	} else {
		FUNC0(userio->serio);
	}

	FUNC0(userio);

	return 0;
}