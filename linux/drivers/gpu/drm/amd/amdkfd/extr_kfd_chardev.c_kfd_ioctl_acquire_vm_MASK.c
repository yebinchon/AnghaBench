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
struct kfd_process_device {struct file* drm_file; } ;
struct kfd_process {int /*<<< orphan*/  mutex; } ;
struct kfd_ioctl_acquire_vm_args {int /*<<< orphan*/  drm_fd; int /*<<< orphan*/  gpu_id; } ;
struct kfd_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct kfd_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct kfd_process_device* FUNC3 (struct kfd_dev*,struct kfd_process*) ; 
 int FUNC4 (struct kfd_process_device*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct file *filep, struct kfd_process *p,
				void *data)
{
	struct kfd_ioctl_acquire_vm_args *args = data;
	struct kfd_process_device *pdd;
	struct kfd_dev *dev;
	struct file *drm_file;
	int ret;

	dev = FUNC2(args->gpu_id);
	if (!dev)
		return -EINVAL;

	drm_file = FUNC0(args->drm_fd);
	if (!drm_file)
		return -EINVAL;

	FUNC5(&p->mutex);

	pdd = FUNC3(dev, p);
	if (!pdd) {
		ret = -EINVAL;
		goto err_unlock;
	}

	if (pdd->drm_file) {
		ret = pdd->drm_file == drm_file ? 0 : -EBUSY;
		goto err_unlock;
	}

	ret = FUNC4(pdd, drm_file);
	if (ret)
		goto err_unlock;
	/* On success, the PDD keeps the drm_file reference */
	FUNC6(&p->mutex);

	return 0;

err_unlock:
	FUNC6(&p->mutex);
	FUNC1(drm_file);
	return ret;
}