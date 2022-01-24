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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {struct vm_area_struct* vma; } ;
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct omap_gem_object {int flags; int /*<<< orphan*/  lock; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int OMAP_BO_TILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*,struct vm_area_struct*,struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*,struct vm_area_struct*,struct vm_fault*) ; 
 struct omap_gem_object* FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

vm_fault_t FUNC7(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct drm_gem_object *obj = vma->vm_private_data;
	struct omap_gem_object *omap_obj = FUNC5(obj);
	int err;
	vm_fault_t ret;

	/* Make sure we don't parallel update on a fault, nor move or remove
	 * something from beneath our feet
	 */
	FUNC0(&omap_obj->lock);

	/* if a shmem backed object, make sure we have pages attached now */
	err = FUNC2(obj);
	if (err) {
		ret = FUNC6(err);
		goto fail;
	}

	/* where should we do corresponding put_pages().. we are mapping
	 * the original page, rather than thru a GART, so we can't rely
	 * on eviction to trigger this.  But munmap() or all mappings should
	 * probably trigger put_pages()?
	 */

	if (omap_obj->flags & OMAP_BO_TILED)
		ret = FUNC4(obj, vma, vmf);
	else
		ret = FUNC3(obj, vma, vmf);


fail:
	FUNC1(&omap_obj->lock);
	return ret;
}