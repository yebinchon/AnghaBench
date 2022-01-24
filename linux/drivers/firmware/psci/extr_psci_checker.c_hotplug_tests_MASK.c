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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int FUNC9(void)
{
	int i, nb_cpu_group, err = -ENOMEM;
	cpumask_var_t offlined_cpus, *cpu_groups;
	char *page_buf;

	if (!FUNC1(&offlined_cpus, GFP_KERNEL))
		return err;

	nb_cpu_group = FUNC2(&cpu_groups);
	if (nb_cpu_group < 0)
		goto out_free_cpus;
	page_buf = (char *)FUNC0(GFP_KERNEL);
	if (!page_buf)
		goto out_free_cpu_groups;

	err = 0;
	/*
	 * Of course the last CPU cannot be powered down and cpu_down() should
	 * refuse doing that.
	 */
	FUNC8("Trying to turn off and on again all CPUs\n");
	err += FUNC4(cpu_online_mask, offlined_cpus);

	/*
	 * Take down CPUs by cpu group this time. When the last CPU is turned
	 * off, the cpu group itself should shut down.
	 */
	for (i = 0; i < nb_cpu_group; ++i) {
		ssize_t len = FUNC3(true, page_buf,
						      cpu_groups[i]);
		/* Remove trailing newline. */
		page_buf[len - 1] = '\0';
		FUNC8("Trying to turn off and on again group %d (CPUs %s)\n",
			i, page_buf);
		err += FUNC4(cpu_groups[i], offlined_cpus);
	}

	FUNC7((unsigned long)page_buf);
out_free_cpu_groups:
	FUNC5(nb_cpu_group, &cpu_groups);
out_free_cpus:
	FUNC6(offlined_cpus);
	return err;
}