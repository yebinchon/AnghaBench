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
struct seq_file {int /*<<< orphan*/  private; } ;
struct flexrm_mbox {int dummy; } ;

/* Variables and functions */
 struct flexrm_mbox* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct flexrm_mbox*,struct seq_file*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *file, void *offset)
{
	struct flexrm_mbox *mbox = FUNC0(file->private);

	/* Write config in file */
	FUNC1(mbox, file);

	return 0;
}