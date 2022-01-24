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
struct hidraw_list {int /*<<< orphan*/  node; int /*<<< orphan*/  read_mutex; struct hidraw* hidraw; } ;
struct hidraw {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  list; int /*<<< orphan*/  open; int /*<<< orphan*/  hid; int /*<<< orphan*/  exist; } ;
struct file {struct hidraw_list* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PM_HINT_FULLON ; 
 int /*<<< orphan*/  PM_HINT_NORMAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hidraw** hidraw_table ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct hidraw_list*) ; 
 struct hidraw_list* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minors_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *file)
{
	unsigned int minor = FUNC2(inode);
	struct hidraw *dev;
	struct hidraw_list *list;
	unsigned long flags;
	int err = 0;

	if (!(list = FUNC4(sizeof(struct hidraw_list), GFP_KERNEL))) {
		err = -ENOMEM;
		goto out;
	}

	FUNC7(&minors_lock);
	if (!hidraw_table[minor] || !hidraw_table[minor]->exist) {
		err = -ENODEV;
		goto out_unlock;
	}

	dev = hidraw_table[minor];
	if (!dev->open++) {
		err = FUNC1(dev->hid, PM_HINT_FULLON);
		if (err < 0) {
			dev->open--;
			goto out_unlock;
		}

		err = FUNC0(dev->hid);
		if (err < 0) {
			FUNC1(dev->hid, PM_HINT_NORMAL);
			dev->open--;
			goto out_unlock;
		}
	}

	list->hidraw = hidraw_table[minor];
	FUNC6(&list->read_mutex);
	FUNC9(&hidraw_table[minor]->list_lock, flags);
	FUNC5(&list->node, &hidraw_table[minor]->list);
	FUNC10(&hidraw_table[minor]->list_lock, flags);
	file->private_data = list;
out_unlock:
	FUNC8(&minors_lock);
out:
	if (err < 0)
		FUNC3(list);
	return err;

}