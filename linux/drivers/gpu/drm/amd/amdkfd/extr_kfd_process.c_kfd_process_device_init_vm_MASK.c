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
struct kfd_process_device {int /*<<< orphan*/ * vm; struct file* drm_file; struct kfd_dev* dev; struct kfd_process* process; } ;
struct kfd_process {int /*<<< orphan*/  ef; int /*<<< orphan*/  kgd_process_info; int /*<<< orphan*/  pasid; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kfd_process_device*) ; 
 int FUNC5 (struct kfd_process_device*) ; 
 int FUNC6 (struct kfd_process_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int FUNC8(struct kfd_process_device *pdd,
			       struct file *drm_file)
{
	struct kfd_process *p;
	struct kfd_dev *dev;
	int ret;

	if (pdd->vm)
		return drm_file ? -EBUSY : 0;

	p = pdd->process;
	dev = pdd->dev;

	if (drm_file)
		ret = FUNC0(
			dev->kgd, drm_file, p->pasid,
			&pdd->vm, &p->kgd_process_info, &p->ef);
	else
		ret = FUNC1(dev->kgd, p->pasid,
			&pdd->vm, &p->kgd_process_info, &p->ef);
	if (ret) {
		FUNC7("Failed to create process VM object\n");
		return ret;
	}

	FUNC3(pdd->vm);

	ret = FUNC6(pdd);
	if (ret)
		goto err_reserve_ib_mem;
	ret = FUNC5(pdd);
	if (ret)
		goto err_init_cwsr;

	pdd->drm_file = drm_file;

	return 0;

err_init_cwsr:
err_reserve_ib_mem:
	FUNC4(pdd);
	if (!drm_file)
		FUNC2(dev->kgd, pdd->vm);
	pdd->vm = NULL;

	return ret;
}