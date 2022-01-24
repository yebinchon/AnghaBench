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
struct vm_area_struct {int /*<<< orphan*/  vm_end; } ;
struct nouveau_cli {int /*<<< orphan*/  drm; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct drm_nouveau_svm_bind {unsigned long va_start; unsigned long va_end; int header; scalar_t__ result; scalar_t__ npages; scalar_t__ stride; scalar_t__ reserved1; scalar_t__ reserved0; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int NOUVEAU_SVM_BIND_COMMAND_MASK ; 
 unsigned int NOUVEAU_SVM_BIND_COMMAND_SHIFT ; 
#define  NOUVEAU_SVM_BIND_COMMAND__MIGRATE 129 
 unsigned int NOUVEAU_SVM_BIND_PRIORITY_MASK ; 
 unsigned int NOUVEAU_SVM_BIND_PRIORITY_SHIFT ; 
 unsigned int NOUVEAU_SVM_BIND_TARGET_MASK ; 
 unsigned int NOUVEAU_SVM_BIND_TARGET_SHIFT ; 
#define  NOUVEAU_SVM_BIND_TARGET__GPU_VRAM 128 
 int NOUVEAU_SVM_BIND_VALID_MASK ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long,unsigned long) ; 
 struct mm_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 struct nouveau_cli* FUNC5 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct drm_device *dev, void *data,
		  struct drm_file *file_priv)
{
	struct nouveau_cli *cli = FUNC5(file_priv);
	struct drm_nouveau_svm_bind *args = data;
	unsigned target, cmd, priority;
	unsigned long addr, end, size;
	struct mm_struct *mm;

	args->va_start &= PAGE_MASK;
	args->va_end &= PAGE_MASK;

	/* Sanity check arguments */
	if (args->reserved0 || args->reserved1)
		return -EINVAL;
	if (args->header & (~NOUVEAU_SVM_BIND_VALID_MASK))
		return -EINVAL;
	if (args->va_start >= args->va_end)
		return -EINVAL;
	if (!args->npages)
		return -EINVAL;

	cmd = args->header >> NOUVEAU_SVM_BIND_COMMAND_SHIFT;
	cmd &= NOUVEAU_SVM_BIND_COMMAND_MASK;
	switch (cmd) {
	case NOUVEAU_SVM_BIND_COMMAND__MIGRATE:
		break;
	default:
		return -EINVAL;
	}

	priority = args->header >> NOUVEAU_SVM_BIND_PRIORITY_SHIFT;
	priority &= NOUVEAU_SVM_BIND_PRIORITY_MASK;

	/* FIXME support CPU target ie all target value < GPU_VRAM */
	target = args->header >> NOUVEAU_SVM_BIND_TARGET_SHIFT;
	target &= NOUVEAU_SVM_BIND_TARGET_MASK;
	switch (target) {
	case NOUVEAU_SVM_BIND_TARGET__GPU_VRAM:
		break;
	default:
		return -EINVAL;
	}

	/*
	 * FIXME: For now refuse non 0 stride, we need to change the migrate
	 * kernel function to handle stride to avoid to create a mess within
	 * each device driver.
	 */
	if (args->stride)
		return -EINVAL;

	size = ((unsigned long)args->npages) << PAGE_SHIFT;
	if ((args->va_start + size) <= args->va_start)
		return -EINVAL;
	if ((args->va_start + size) > args->va_end)
		return -EINVAL;

	/*
	 * Ok we are ask to do something sane, for now we only support migrate
	 * commands but we will add things like memory policy (what to do on
	 * page fault) and maybe some other commands.
	 */

	mm = FUNC2(current);
	FUNC0(&mm->mmap_sem);

	for (addr = args->va_start, end = args->va_start + size; addr < end;) {
		struct vm_area_struct *vma;
		unsigned long next;

		vma = FUNC1(mm, addr, end);
		if (!vma)
			break;

		next = FUNC3(vma->vm_end, end);
		/* This is a best effort so we ignore errors */
		FUNC6(cli->drm, vma, addr, next);
		addr = next;
	}

	/*
	 * FIXME Return the number of page we have migrated, again we need to
	 * update the migrate API to return that information so that we can
	 * report it to user space.
	 */
	args->result = 0;

	FUNC7(&mm->mmap_sem);
	FUNC4(mm);

	return 0;
}