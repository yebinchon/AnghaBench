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
struct inode {int dummy; } ;
struct hid_debug_list {int /*<<< orphan*/  hid_debug_fifo; TYPE_1__* hdev; int /*<<< orphan*/  node; } ;
struct file {struct hid_debug_list* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  debug_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_debug_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct hid_debug_list *list = file->private_data;
	unsigned long flags;

	FUNC3(&list->hdev->debug_list_lock, flags);
	FUNC2(&list->node);
	FUNC4(&list->hdev->debug_list_lock, flags);
	FUNC0(&list->hid_debug_fifo);
	FUNC1(list);

	return 0;
}