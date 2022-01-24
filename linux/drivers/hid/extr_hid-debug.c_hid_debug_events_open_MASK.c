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
struct inode {scalar_t__ i_private; } ;
struct hid_device {int /*<<< orphan*/  debug_list_lock; int /*<<< orphan*/  debug_list; } ;
struct hid_debug_list {struct hid_device* hdev; int /*<<< orphan*/  node; int /*<<< orphan*/  read_mutex; int /*<<< orphan*/  hid_debug_fifo; } ;
struct file {struct hid_debug_list* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_DEBUG_FIFOSIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_debug_list*) ; 
 struct hid_debug_list* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	int err = 0;
	struct hid_debug_list *list;
	unsigned long flags;

	if (!(list = FUNC2(sizeof(struct hid_debug_list), GFP_KERNEL))) {
		err = -ENOMEM;
		goto out;
	}

	err = FUNC0(&list->hid_debug_fifo, HID_DEBUG_FIFOSIZE, GFP_KERNEL);
	if (err) {
		FUNC1(list);
		goto out;
	}
	list->hdev = (struct hid_device *) inode->i_private;
	file->private_data = list;
	FUNC4(&list->read_mutex);

	FUNC5(&list->hdev->debug_list_lock, flags);
	FUNC3(&list->node, &list->hdev->debug_list);
	FUNC6(&list->hdev->debug_list_lock, flags);

out:
	return err;
}