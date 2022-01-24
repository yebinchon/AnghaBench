#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  objects; } ;
struct TYPE_4__ {unsigned long gtt_size; } ;
struct radeon_device {unsigned long gart_pin_size; TYPE_3__ gem; TYPE_1__ mc; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_5__ {struct drm_gem_object base; } ;
struct radeon_bo {int /*<<< orphan*/  list; int /*<<< orphan*/  pid; TYPE_2__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,int,int,int) ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int PAGE_SIZE ; 
 int RADEON_GEM_DOMAIN_GTT ; 
 int RADEON_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct radeon_device*,unsigned long,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct radeon_bo**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct radeon_device *rdev, unsigned long size,
				int alignment, int initial_domain,
				u32 flags, bool kernel,
				struct drm_gem_object **obj)
{
	struct radeon_bo *robj;
	unsigned long max_size;
	int r;

	*obj = NULL;
	/* At least align on page size */
	if (alignment < PAGE_SIZE) {
		alignment = PAGE_SIZE;
	}

	/* Maximum bo size is the unpinned gtt size since we use the gtt to
	 * handle vram to system pool migrations.
	 */
	max_size = rdev->mc.gtt_size - rdev->gart_pin_size;
	if (size > max_size) {
		FUNC0("Allocation size %ldMb bigger than %ldMb limit\n",
			  size >> 20, max_size >> 20);
		return -ENOMEM;
	}

retry:
	r = FUNC5(rdev, size, alignment, kernel, initial_domain,
			     flags, NULL, NULL, &robj);
	if (r) {
		if (r != -ERESTARTSYS) {
			if (initial_domain == RADEON_GEM_DOMAIN_VRAM) {
				initial_domain |= RADEON_GEM_DOMAIN_GTT;
				goto retry;
			}
			FUNC1("Failed to allocate GEM object (%ld, %d, %u, %d)\n",
				  size, initial_domain, alignment, r);
		}
		return r;
	}
	*obj = &robj->tbo.base;
	robj->pid = FUNC6(current);

	FUNC3(&rdev->gem.mutex);
	FUNC2(&robj->list, &rdev->gem.objects);
	FUNC4(&rdev->gem.mutex);

	return 0;
}