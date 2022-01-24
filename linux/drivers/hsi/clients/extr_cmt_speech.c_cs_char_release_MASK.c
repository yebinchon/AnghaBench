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
struct file {struct cs_char* private_data; } ;
struct cs_char {int /*<<< orphan*/  lock; scalar_t__ opened; int /*<<< orphan*/  dataind_queue; int /*<<< orphan*/  chardev_queue; int /*<<< orphan*/  mmap_base; int /*<<< orphan*/ * hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *unused, struct file *file)
{
	struct cs_char *csdata = file->private_data;

	FUNC1(csdata->hi);
	FUNC3(&csdata->lock);
	csdata->hi = NULL;
	FUNC2(csdata->mmap_base);
	FUNC0(&csdata->chardev_queue);
	FUNC0(&csdata->dataind_queue);
	csdata->opened = 0;
	FUNC4(&csdata->lock);

	return 0;
}