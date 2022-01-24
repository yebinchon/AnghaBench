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
struct kgd_mem {int dummy; } ;
struct kfd_process_device {int /*<<< orphan*/  vm; } ;
struct kfd_process {int /*<<< orphan*/  mutex; } ;
struct kfd_ioctl_import_dmabuf_args {int /*<<< orphan*/  gpu_id; int /*<<< orphan*/  handle; int /*<<< orphan*/  va_addr; int /*<<< orphan*/  dmabuf_fd; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; } ;
struct file {int dummy; } ;
struct dma_buf {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct kfd_process_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct kfd_process_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kgd_mem*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct kfd_process_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kgd_mem**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kfd_process_device* FUNC5 (int /*<<< orphan*/ ) ; 
 struct kfd_process_device* FUNC6 (struct kfd_dev*,struct kfd_process*) ; 
 struct kfd_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct kfd_process_device*,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct file *filep,
				   struct kfd_process *p, void *data)
{
	struct kfd_ioctl_import_dmabuf_args *args = data;
	struct kfd_process_device *pdd;
	struct dma_buf *dmabuf;
	struct kfd_dev *dev;
	int idr_handle;
	uint64_t size;
	void *mem;
	int r;

	dev = FUNC7(args->gpu_id);
	if (!dev)
		return -EINVAL;

	dmabuf = FUNC5(args->dmabuf_fd);
	if (FUNC0(dmabuf))
		return FUNC2(dmabuf);

	FUNC9(&p->mutex);

	pdd = FUNC6(dev, p);
	if (FUNC0(pdd)) {
		r = FUNC2(pdd);
		goto err_unlock;
	}

	r = FUNC4(dev->kgd, dmabuf,
					      args->va_addr, pdd->vm,
					      (struct kgd_mem **)&mem, &size,
					      NULL);
	if (r)
		goto err_unlock;

	idr_handle = FUNC8(pdd, mem);
	if (idr_handle < 0) {
		r = -EFAULT;
		goto err_free;
	}

	FUNC10(&p->mutex);

	args->handle = FUNC1(args->gpu_id, idr_handle);

	return 0;

err_free:
	FUNC3(dev->kgd, (struct kgd_mem *)mem);
err_unlock:
	FUNC10(&p->mutex);
	return r;
}