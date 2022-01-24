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
struct inode {int (* i_private ) (struct seq_file*,void*) ;} ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file*,int (*) (struct seq_file*,void*),int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *file)
{
	int (*show)(struct seq_file *, void *) = inode->i_private;

	return FUNC0(file, show, NULL);
}