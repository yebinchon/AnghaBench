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
struct kgd_mem {int dummy; } ;
struct kfd_process_device {int dummy; } ;
struct kfd_process {int /*<<< orphan*/  mutex; } ;
struct kfd_ioctl_free_memory_of_gpu_args {int /*<<< orphan*/  handle; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct kgd_mem*) ; 
 struct kfd_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct kfd_process_device* FUNC4 (struct kfd_dev*,struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC5 (struct kfd_process_device*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct kfd_process_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct file *filep,
					struct kfd_process *p, void *data)
{
	struct kfd_ioctl_free_memory_of_gpu_args *args = data;
	struct kfd_process_device *pdd;
	void *mem;
	struct kfd_dev *dev;
	int ret;

	dev = FUNC3(FUNC0(args->handle));
	if (!dev)
		return -EINVAL;

	FUNC7(&p->mutex);

	pdd = FUNC4(dev, p);
	if (!pdd) {
		FUNC9("Process device data doesn't exist\n");
		ret = -EINVAL;
		goto err_unlock;
	}

	mem = FUNC6(
		pdd, FUNC1(args->handle));
	if (!mem) {
		ret = -EINVAL;
		goto err_unlock;
	}

	ret = FUNC2(dev->kgd,
						(struct kgd_mem *)mem);

	/* If freeing the buffer failed, leave the handle in place for
	 * clean-up during process tear-down.
	 */
	if (!ret)
		FUNC5(
			pdd, FUNC1(args->handle));

err_unlock:
	FUNC8(&p->mutex);
	return ret;
}