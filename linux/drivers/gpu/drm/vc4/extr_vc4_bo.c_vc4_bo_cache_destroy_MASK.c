#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  time_work; int /*<<< orphan*/  time_timer; } ;
struct vc4_dev {int num_labels; TYPE_2__* bo_labels; TYPE_1__ bo_cache; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* name; scalar_t__ num_allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct vc4_dev* FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

void FUNC7(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC5(dev);
	int i;

	FUNC2(&vc4->bo_cache.time_timer);
	FUNC1(&vc4->bo_cache.time_work);

	FUNC6(dev);

	for (i = 0; i < vc4->num_labels; i++) {
		if (vc4->bo_labels[i].num_allocated) {
			FUNC0("Destroying BO cache with %d %s "
				  "BOs still allocated\n",
				  vc4->bo_labels[i].num_allocated,
				  vc4->bo_labels[i].name);
		}

		if (FUNC3(i))
			FUNC4(vc4->bo_labels[i].name);
	}
	FUNC4(vc4->bo_labels);
}