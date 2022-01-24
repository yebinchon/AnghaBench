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
typedef  int /*<<< orphan*/  uint64_t ;
struct msm_gem_address_space {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_framebuffer {TYPE_2__ base; int /*<<< orphan*/ * obj; TYPE_1__* format; } ;
struct TYPE_3__ {int num_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct msm_gem_address_space*,int /*<<< orphan*/ *) ; 

int FUNC2(struct drm_framebuffer *fb,
		struct msm_gem_address_space *aspace)
{
	int ret, i, n = fb->format->num_planes;
	uint64_t iova;

	for (i = 0; i < n; i++) {
		ret = FUNC1(fb->obj[i], aspace, &iova);
		FUNC0("FB[%u]: iova[%d]: %08llx (%d)", fb->base.id, i, iova, ret);
		if (ret)
			return ret;
	}

	return 0;
}