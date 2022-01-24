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
struct spu_queue {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NR_CPUS ; 
 int /*<<< orphan*/ * cpu_to_cwq ; 
 void* cpu_to_mau ; 
 int /*<<< orphan*/  global_ref ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  spu_lock ; 

__attribute__((used)) static int FUNC8(void)
{
	int err = 0;

	FUNC2(&spu_lock);

	if (global_ref++)
		goto out;

	err = FUNC4();
	if (err)
		goto out;

	err = FUNC7();
	if (err)
		goto out_hvapi_release;

	err = -ENOMEM;
	cpu_to_cwq = FUNC0(NR_CPUS, sizeof(struct spu_queue *),
			     GFP_KERNEL);
	if (!cpu_to_cwq)
		goto out_queue_cache_destroy;

	cpu_to_mau = FUNC0(NR_CPUS, sizeof(struct spu_queue *),
			     GFP_KERNEL);
	if (!cpu_to_mau)
		goto out_free_cwq_table;

	err = 0;

out:
	if (err)
		global_ref--;
	FUNC3(&spu_lock);
	return err;

out_free_cwq_table:
	FUNC1(cpu_to_cwq);
	cpu_to_cwq = NULL;

out_queue_cache_destroy:
	FUNC6();

out_hvapi_release:
	FUNC5();
	goto out;
}