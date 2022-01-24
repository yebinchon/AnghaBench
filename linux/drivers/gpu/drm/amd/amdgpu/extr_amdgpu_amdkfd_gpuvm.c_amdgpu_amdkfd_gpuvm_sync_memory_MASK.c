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
struct kgd_mem {int /*<<< orphan*/  lock; int /*<<< orphan*/  sync; } ;
struct kgd_dev {int dummy; } ;
struct amdgpu_sync {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct amdgpu_sync*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_sync*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_sync*) ; 
 int FUNC3 (struct amdgpu_sync*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(
		struct kgd_dev *kgd, struct kgd_mem *mem, bool intr)
{
	struct amdgpu_sync sync;
	int ret;

	FUNC1(&sync);

	FUNC4(&mem->lock);
	FUNC0(&mem->sync, &sync);
	FUNC5(&mem->lock);

	ret = FUNC3(&sync, intr);
	FUNC2(&sync);
	return ret;
}