#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ttm; } ;
struct radeon_bo {TYPE_1__ tbo; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 struct dma_buf* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dma_buf* FUNC1 (struct drm_gem_object*,int) ; 
 struct radeon_bo* FUNC2 (struct drm_gem_object*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

struct dma_buf *FUNC4(struct drm_gem_object *gobj,
					int flags)
{
	struct radeon_bo *bo = FUNC2(gobj);
	if (FUNC3(bo->tbo.ttm))
		return FUNC0(-EPERM);
	return FUNC1(gobj, flags);
}