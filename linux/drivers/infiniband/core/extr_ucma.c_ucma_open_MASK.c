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
struct ucma_file {struct file* filp; int /*<<< orphan*/  mut; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  ctx_list; int /*<<< orphan*/  event_list; int /*<<< orphan*/  close_wq; } ;
struct inode {int dummy; } ;
struct file {struct ucma_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ucma_file*) ; 
 struct ucma_file* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct ucma_file *file;

	file = FUNC4(sizeof *file, GFP_KERNEL);
	if (!file)
		return -ENOMEM;

	file->close_wq = FUNC1("ucma_close_id",
						 WQ_MEM_RECLAIM);
	if (!file->close_wq) {
		FUNC3(file);
		return -ENOMEM;
	}

	FUNC0(&file->event_list);
	FUNC0(&file->ctx_list);
	FUNC2(&file->poll_wait);
	FUNC5(&file->mut);

	filp->private_data = file;
	file->filp = filp;

	return FUNC6(inode, filp);
}