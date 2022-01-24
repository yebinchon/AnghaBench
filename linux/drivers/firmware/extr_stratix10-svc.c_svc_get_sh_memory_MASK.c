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
struct task_struct {int dummy; } ;
struct stratix10_svc_sh_memory {scalar_t__ size; scalar_t__ addr; int /*<<< orphan*/  sync_complete; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  svc_normal_to_secure_shm_thread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev,
				    struct stratix10_svc_sh_memory *sh_memory)
{
	struct device *dev = &pdev->dev;
	struct task_struct *sh_memory_task;
	unsigned int cpu = 0;

	FUNC4(&sh_memory->sync_complete);

	/* smc or hvc call happens on cpu 0 bound kthread */
	sh_memory_task = FUNC5(svc_normal_to_secure_shm_thread,
					       (void *)sh_memory,
						FUNC1(cpu),
						"svc_smc_hvc_shm_thread");
	if (FUNC0(sh_memory_task)) {
		FUNC3(dev, "fail to create stratix10_svc_smc_shm_thread\n");
		return -EINVAL;
	}

	FUNC7(sh_memory_task);

	if (!FUNC6(&sh_memory->sync_complete, 10 * HZ)) {
		FUNC3(dev,
			"timeout to get sh-memory paras from secure world\n");
		return -ETIMEDOUT;
	}

	if (!sh_memory->addr || !sh_memory->size) {
		FUNC3(dev,
			"failed to get shared memory info from secure world\n");
		return -ENOMEM;
	}

	FUNC2(dev, "SM software provides paddr: 0x%016x, size: 0x%08x\n",
		(unsigned int)sh_memory->addr,
		(unsigned int)sh_memory->size);

	return 0;
}