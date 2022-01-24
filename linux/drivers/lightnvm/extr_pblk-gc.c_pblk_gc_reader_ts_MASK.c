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
struct pblk_gc {int /*<<< orphan*/  pipeline_gc; } ;
struct pblk {struct pblk_gc gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *data)
{
	struct pblk *pblk = data;
	struct pblk_gc *gc = &pblk->gc;

	while (!FUNC2()) {
		if (!FUNC3(pblk))
			continue;
		FUNC6(TASK_INTERRUPTIBLE);
		FUNC1();
	}

#ifdef CONFIG_NVM_PBLK_DEBUG
	pblk_info(pblk, "flushing gc pipeline, %d lines left\n",
		atomic_read(&gc->pipeline_gc));
#endif

	do {
		if (!FUNC0(&gc->pipeline_gc))
			break;

		FUNC5();
	} while (1);

	return 0;
}