#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct vm_area_struct {int /*<<< orphan*/  vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_3__ {int /*<<< orphan*/  filp; scalar_t__ size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_i915_gem_mmap {int flags; scalar_t__ addr_ptr; int /*<<< orphan*/  size; int /*<<< orphan*/  offset; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long EINTR ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 unsigned long ENOMEM ; 
 unsigned long ENXIO ; 
 int I915_MMAP_WC ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  X86_FEATURE_PAT ; 
 scalar_t__ FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long) ; 
 struct drm_i915_gem_object* FUNC5 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12(struct drm_device *dev, void *data,
		    struct drm_file *file)
{
	struct drm_i915_gem_mmap *args = data;
	struct drm_i915_gem_object *obj;
	unsigned long addr;

	if (args->flags & ~(I915_MMAP_WC))
		return -EINVAL;

	if (args->flags & I915_MMAP_WC && !FUNC2(X86_FEATURE_PAT))
		return -ENODEV;

	obj = FUNC5(file, args->handle);
	if (!obj)
		return -ENOENT;

	/* prime objects have no backing filp to GEM mmap
	 * pages from.
	 */
	if (!obj->base.filp) {
		addr = -ENXIO;
		goto err;
	}

	if (FUNC8(args->offset, args->size, (u64)obj->base.size)) {
		addr = -EINVAL;
		goto err;
	}

	addr = FUNC11(obj->base.filp, 0, args->size,
		       PROT_READ | PROT_WRITE, MAP_SHARED,
		       args->offset);
	if (FUNC0(addr))
		goto err;

	if (args->flags & I915_MMAP_WC) {
		struct mm_struct *mm = current->mm;
		struct vm_area_struct *vma;

		if (FUNC3(&mm->mmap_sem)) {
			addr = -EINTR;
			goto err;
		}
		vma = FUNC4(mm, addr);
		if (vma && FUNC1(vma, obj->base.filp, addr, args->size))
			vma->vm_page_prot =
				FUNC7(FUNC10(vma->vm_flags));
		else
			addr = -ENOMEM;
		FUNC9(&mm->mmap_sem);
		if (FUNC0(addr))
			goto err;
	}
	FUNC6(obj);

	args->addr_ptr = (u64)addr;
	return 0;

err:
	FUNC6(obj);
	return addr;
}