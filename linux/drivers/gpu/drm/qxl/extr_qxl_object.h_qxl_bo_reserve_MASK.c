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
struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct qxl_bo {TYPE_2__ tbo; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct qxl_bo*) ; 
 int FUNC1 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct qxl_bo *bo, bool no_wait)
{
	int r;

	r = FUNC1(&bo->tbo, true, no_wait, NULL);
	if (FUNC2(r != 0)) {
		if (r != -ERESTARTSYS) {
			struct drm_device *ddev = bo->tbo.base.dev;

			FUNC0(ddev->dev, "%p reserve failed\n", bo);
		}
		return r;
	}
	return 0;
}