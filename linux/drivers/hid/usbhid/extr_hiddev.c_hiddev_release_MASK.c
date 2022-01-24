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
struct hiddev_list {TYPE_1__* hiddev; int /*<<< orphan*/  node; } ;
struct file {struct hiddev_list* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  existancelock; int /*<<< orphan*/  hid; scalar_t__ exist; int /*<<< orphan*/  open; int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_HINT_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct hiddev_list*) ; 

__attribute__((used)) static int FUNC9(struct inode * inode, struct file * file)
{
	struct hiddev_list *list = file->private_data;
	unsigned long flags;

	FUNC6(&list->hiddev->list_lock, flags);
	FUNC3(&list->node);
	FUNC7(&list->hiddev->list_lock, flags);

	FUNC4(&list->hiddev->existancelock);
	if (!--list->hiddev->open) {
		if (list->hiddev->exist) {
			FUNC0(list->hiddev->hid);
			FUNC1(list->hiddev->hid, PM_HINT_NORMAL);
		} else {
			FUNC5(&list->hiddev->existancelock);
			FUNC2(list->hiddev);
			FUNC8(list);
			return 0;
		}
	}

	FUNC5(&list->hiddev->existancelock);
	FUNC8(list);

	return 0;
}