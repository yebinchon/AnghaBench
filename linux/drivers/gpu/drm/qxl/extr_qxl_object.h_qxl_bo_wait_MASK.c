#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  mem_type; } ;
struct TYPE_6__ {struct drm_device* dev; } ;
struct TYPE_8__ {TYPE_2__ mem; TYPE_1__ base; } ;
struct qxl_bo {TYPE_3__ tbo; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct qxl_bo*) ; 
 int FUNC1 (TYPE_3__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline int FUNC5(struct qxl_bo *bo, u32 *mem_type,
			      bool no_wait)
{
	int r;

	r = FUNC1(&bo->tbo, true, no_wait, NULL);
	if (FUNC4(r != 0)) {
		if (r != -ERESTARTSYS) {
			struct drm_device *ddev = bo->tbo.base.dev;

			FUNC0(ddev->dev, "%p reserve failed for wait\n",
				bo);
		}
		return r;
	}
	if (mem_type)
		*mem_type = bo->tbo.mem.mem_type;

	r = FUNC3(&bo->tbo, true, no_wait);
	FUNC2(&bo->tbo);
	return r;
}