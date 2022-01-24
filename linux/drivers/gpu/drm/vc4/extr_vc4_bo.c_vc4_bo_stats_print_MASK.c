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
struct TYPE_4__ {int size; int purged_size; int /*<<< orphan*/  lock; scalar_t__ purged_num; scalar_t__ num; } ;
struct vc4_dev {int num_labels; TYPE_2__ purgeable; TYPE_1__* bo_labels; } ;
struct drm_printer {int dummy; } ;
struct TYPE_3__ {char* name; int size_allocated; scalar_t__ num_allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_printer *p, struct vc4_dev *vc4)
{
	int i;

	for (i = 0; i < vc4->num_labels; i++) {
		if (!vc4->bo_labels[i].num_allocated)
			continue;

		FUNC0(p, "%30s: %6dkb BOs (%d)\n",
			   vc4->bo_labels[i].name,
			   vc4->bo_labels[i].size_allocated / 1024,
			   vc4->bo_labels[i].num_allocated);
	}

	FUNC1(&vc4->purgeable.lock);
	if (vc4->purgeable.num)
		FUNC0(p, "%30s: %6zdkb BOs (%d)\n", "userspace BO cache",
			   vc4->purgeable.size / 1024, vc4->purgeable.num);

	if (vc4->purgeable.purged_num)
		FUNC0(p, "%30s: %6zdkb BOs (%d)\n", "total purged BO",
			   vc4->purgeable.purged_size / 1024,
			   vc4->purgeable.purged_num);
	FUNC2(&vc4->purgeable.lock);
}