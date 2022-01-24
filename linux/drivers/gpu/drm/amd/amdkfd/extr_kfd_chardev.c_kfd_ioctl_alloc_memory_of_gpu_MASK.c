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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct kgd_mem {int dummy; } ;
struct kfd_process_device {int /*<<< orphan*/  vm; } ;
struct kfd_process {int /*<<< orphan*/  mutex; } ;
struct kfd_ioctl_alloc_memory_of_gpu_args {int mmap_offset; int flags; scalar_t__ size; int /*<<< orphan*/  gpu_id; int /*<<< orphan*/  handle; int /*<<< orphan*/  va_addr; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kfd_process_device*) ; 
 int KFD_IOC_ALLOC_MEM_FLAGS_DOORBELL ; 
 int KFD_IOC_ALLOC_MEM_FLAGS_MMIO_REMAP ; 
 int KFD_IOC_ALLOC_MEM_FLAGS_PUBLIC ; 
 int KFD_IOC_ALLOC_MEM_FLAGS_VRAM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int KFD_MMAP_TYPE_MMIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 long FUNC3 (struct kfd_process_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct kgd_mem**,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct kgd_mem*) ; 
 struct kfd_process_device* FUNC7 (struct kfd_dev*,struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC8 (struct kfd_dev*) ; 
 struct kfd_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct kfd_dev*) ; 
 int FUNC11 (struct kfd_dev*,struct kfd_process*) ; 
 int FUNC12 (struct kfd_process_device*,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(struct file *filep,
					struct kfd_process *p, void *data)
{
	struct kfd_ioctl_alloc_memory_of_gpu_args *args = data;
	struct kfd_process_device *pdd;
	void *mem;
	struct kfd_dev *dev;
	int idr_handle;
	long err;
	uint64_t offset = args->mmap_offset;
	uint32_t flags = args->flags;

	if (args->size == 0)
		return -EINVAL;

	dev = FUNC9(args->gpu_id);
	if (!dev)
		return -EINVAL;

	if ((flags & KFD_IOC_ALLOC_MEM_FLAGS_PUBLIC) &&
		(flags & KFD_IOC_ALLOC_MEM_FLAGS_VRAM) &&
		!FUNC8(dev)) {
		FUNC15("Alloc host visible vram on small bar is not allowed\n");
		return -EINVAL;
	}

	if (flags & KFD_IOC_ALLOC_MEM_FLAGS_DOORBELL) {
		if (args->size != FUNC10(dev))
			return -EINVAL;
		offset = FUNC11(dev, p);
	} else if (flags & KFD_IOC_ALLOC_MEM_FLAGS_MMIO_REMAP) {
		if (args->size != PAGE_SIZE)
			return -EINVAL;
		offset = FUNC4(dev->kgd);
		if (!offset)
			return -ENOMEM;
	}

	FUNC13(&p->mutex);

	pdd = FUNC7(dev, p);
	if (FUNC0(pdd)) {
		err = FUNC3(pdd);
		goto err_unlock;
	}

	err = FUNC5(
		dev->kgd, args->va_addr, args->size,
		pdd->vm, (struct kgd_mem **) &mem, &offset,
		flags);

	if (err)
		goto err_unlock;

	idr_handle = FUNC12(pdd, mem);
	if (idr_handle < 0) {
		err = -EFAULT;
		goto err_free;
	}

	FUNC14(&p->mutex);

	args->handle = FUNC2(args->gpu_id, idr_handle);
	args->mmap_offset = offset;

	/* MMIO is mapped through kfd device
	 * Generate a kfd mmap offset
	 */
	if (flags & KFD_IOC_ALLOC_MEM_FLAGS_MMIO_REMAP) {
		args->mmap_offset = KFD_MMAP_TYPE_MMIO | FUNC1(args->gpu_id);
		args->mmap_offset <<= PAGE_SHIFT;
	}

	return 0;

err_free:
	FUNC6(dev->kgd, (struct kgd_mem *)mem);
err_unlock:
	FUNC14(&p->mutex);
	return err;
}