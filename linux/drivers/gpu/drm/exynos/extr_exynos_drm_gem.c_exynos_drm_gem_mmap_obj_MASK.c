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
struct vm_area_struct {int /*<<< orphan*/  vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct exynos_drm_gem {int flags; } ;
struct drm_gem_object {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int EXYNOS_BO_CACHABLE ; 
 int EXYNOS_BO_WC ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 int FUNC2 (struct exynos_drm_gem*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct exynos_drm_gem* FUNC6 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_gem_object *obj,
				   struct vm_area_struct *vma)
{
	struct exynos_drm_gem *exynos_gem = FUNC6(obj);
	int ret;

	FUNC0(FUNC5(obj->dev), "flags = 0x%x\n",
			  exynos_gem->flags);

	/* non-cachable as default. */
	if (exynos_gem->flags & EXYNOS_BO_CACHABLE)
		vma->vm_page_prot = FUNC7(vma->vm_flags);
	else if (exynos_gem->flags & EXYNOS_BO_WC)
		vma->vm_page_prot =
			FUNC4(FUNC7(vma->vm_flags));
	else
		vma->vm_page_prot =
			FUNC3(FUNC7(vma->vm_flags));

	ret = FUNC2(exynos_gem, vma);
	if (ret)
		goto err_close_vm;

	return ret;

err_close_vm:
	FUNC1(vma);

	return ret;
}