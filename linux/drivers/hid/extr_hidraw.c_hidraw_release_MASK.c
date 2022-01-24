#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct hidraw_list {int /*<<< orphan*/  node; } ;
struct file {struct hidraw_list* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__** hidraw_table ; 
 unsigned int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct hidraw_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minors_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct inode * inode, struct file * file)
{
	unsigned int minor = FUNC1(inode);
	struct hidraw_list *list = file->private_data;
	unsigned long flags;

	FUNC4(&minors_lock);

	FUNC6(&hidraw_table[minor]->list_lock, flags);
	FUNC3(&list->node);
	FUNC7(&hidraw_table[minor]->list_lock, flags);
	FUNC2(list);

	FUNC0(hidraw_table[minor], 0);

	FUNC5(&minors_lock);
	return 0;
}