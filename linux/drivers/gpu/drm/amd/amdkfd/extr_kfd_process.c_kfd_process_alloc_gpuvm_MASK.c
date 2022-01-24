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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct kgd_mem {int dummy; } ;
struct kfd_process_device {int /*<<< orphan*/  vm; struct kfd_dev* dev; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kgd_mem**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kgd_mem*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct kgd_mem*,void**,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct kgd_mem*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct kgd_mem*,int) ; 
 int FUNC5 (struct kfd_process_device*,struct kgd_mem*) ; 
 int /*<<< orphan*/  FUNC6 (struct kfd_process_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kgd_mem*,struct kfd_process_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct kfd_process_device *pdd,
				   uint64_t gpu_va, uint32_t size,
				   uint32_t flags, void **kptr)
{
	struct kfd_dev *kdev = pdd->dev;
	struct kgd_mem *mem = NULL;
	int handle;
	int err;

	err = FUNC0(kdev->kgd, gpu_va, size,
						 pdd->vm, &mem, NULL, flags);
	if (err)
		goto err_alloc_mem;

	err = FUNC3(kdev->kgd, mem, pdd->vm);
	if (err)
		goto err_map_mem;

	err = FUNC4(kdev->kgd, mem, true);
	if (err) {
		FUNC8("Sync memory failed, wait interrupted by user signal\n");
		goto sync_memory_failed;
	}

	/* Create an obj handle so kfd_process_device_remove_obj_handle
	 * will take care of the bo removal when the process finishes.
	 * We do not need to take p->mutex, because the process is just
	 * created and the ioctls have not had the chance to run.
	 */
	handle = FUNC5(pdd, mem);

	if (handle < 0) {
		err = handle;
		goto free_gpuvm;
	}

	if (kptr) {
		err = FUNC2(kdev->kgd,
				(struct kgd_mem *)mem, kptr, NULL);
		if (err) {
			FUNC8("Map GTT BO to kernel failed\n");
			goto free_obj_handle;
		}
	}

	return err;

free_obj_handle:
	FUNC6(pdd, handle);
free_gpuvm:
sync_memory_failed:
	FUNC7(mem, pdd);
	return err;

err_map_mem:
	FUNC1(kdev->kgd, mem);
err_alloc_mem:
	*kptr = NULL;
	return err;
}