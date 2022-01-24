#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_device {TYPE_4__* asic; } ;
struct TYPE_8__ {int /*<<< orphan*/  mem_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  resv; } ;
struct TYPE_9__ {TYPE_2__ mem; TYPE_1__ base; } ;
struct radeon_bo {TYPE_6__* rdev; TYPE_3__ tbo; } ;
struct drm_radeon_gem_wait_idle {int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_12__ {TYPE_5__* asic; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* mmio_hdp_flush ) (struct radeon_device*) ;} ;
struct TYPE_10__ {scalar_t__ mmio_hdp_flush; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int HZ ; 
 scalar_t__ RADEON_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 struct drm_gem_object* FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC4 (struct drm_gem_object*) ; 
 int FUNC5 (struct radeon_device*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 

int FUNC8(struct drm_device *dev, void *data,
			      struct drm_file *filp)
{
	struct radeon_device *rdev = dev->dev_private;
	struct drm_radeon_gem_wait_idle *args = data;
	struct drm_gem_object *gobj;
	struct radeon_bo *robj;
	int r = 0;
	uint32_t cur_placement = 0;
	long ret;

	gobj = FUNC2(filp, args->handle);
	if (gobj == NULL) {
		return -ENOENT;
	}
	robj = FUNC4(gobj);

	ret = FUNC1(robj->tbo.base.resv, true, true, 30 * HZ);
	if (ret == 0)
		r = -EBUSY;
	else if (ret < 0)
		r = ret;

	/* Flush HDP cache via MMIO if necessary */
	cur_placement = FUNC0(robj->tbo.mem.mem_type);
	if (rdev->asic->mmio_hdp_flush &&
	    FUNC6(cur_placement) == RADEON_GEM_DOMAIN_VRAM)
		robj->rdev->asic->mmio_hdp_flush(rdev);
	FUNC3(gobj);
	r = FUNC5(rdev, r);
	return r;
}