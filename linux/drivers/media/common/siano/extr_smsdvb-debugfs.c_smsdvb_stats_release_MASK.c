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
struct smsdvb_debugfs {int stats_was_read; int /*<<< orphan*/  refcount; int /*<<< orphan*/  stats_queue; int /*<<< orphan*/  lock; } ;
struct inode {int dummy; } ;
struct file {struct smsdvb_debugfs* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsdvb_debugfs_data_release ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct smsdvb_debugfs *debug_data = file->private_data;

	FUNC1(&debug_data->lock);
	debug_data->stats_was_read = true;	/* return EOF to read() */
	FUNC2(&debug_data->lock);
	FUNC3(&debug_data->stats_queue);

	FUNC0(&debug_data->refcount, smsdvb_debugfs_data_release);
	file->private_data = NULL;

	return 0;
}