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
struct seq_file {int dummy; } ;
struct file {struct dma_buf* private_data; } ;
struct dma_buf {int /*<<< orphan*/  lock; scalar_t__ name; scalar_t__ exp_name; int /*<<< orphan*/  file; scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m, struct file *file)
{
	struct dma_buf *dmabuf = file->private_data;

	FUNC3(m, "size:\t%zu\n", dmabuf->size);
	/* Don't count the temporary reference taken inside procfs seq_show */
	FUNC3(m, "count:\t%ld\n", FUNC0(dmabuf->file) - 1);
	FUNC3(m, "exp_name:\t%s\n", dmabuf->exp_name);
	FUNC1(&dmabuf->lock);
	if (dmabuf->name)
		FUNC3(m, "name:\t%s\n", dmabuf->name);
	FUNC2(&dmabuf->lock);
}