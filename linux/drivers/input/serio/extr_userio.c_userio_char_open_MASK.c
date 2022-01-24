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
struct userio_device {TYPE_1__* serio; int /*<<< orphan*/  waitq; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  mutex; } ;
struct serio {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct userio_device* private_data; } ;
struct TYPE_2__ {struct userio_device* port_data; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct userio_device*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  userio_device_write ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct userio_device *userio;

	userio = FUNC2(sizeof(struct userio_device), GFP_KERNEL);
	if (!userio)
		return -ENOMEM;

	FUNC3(&userio->mutex);
	FUNC4(&userio->buf_lock);
	FUNC0(&userio->waitq);

	userio->serio = FUNC2(sizeof(struct serio), GFP_KERNEL);
	if (!userio->serio) {
		FUNC1(userio);
		return -ENOMEM;
	}

	userio->serio->write = userio_device_write;
	userio->serio->port_data = userio;

	file->private_data = userio;

	return 0;
}