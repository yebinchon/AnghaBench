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
struct TYPE_3__ {int /*<<< orphan*/  time_timer; int /*<<< orphan*/  time_work; int /*<<< orphan*/  time_list; } ;
struct vc4_dev {int num_labels; TYPE_1__ bo_cache; int /*<<< orphan*/  bo_lock; TYPE_2__* bo_labels; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VC4_BO_TYPE_COUNT ; 
 int /*<<< orphan*/ * bo_type_names ; 
 TYPE_2__* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  vc4_bo_cache_time_timer ; 
 int /*<<< orphan*/  vc4_bo_cache_time_work ; 
 int /*<<< orphan*/  vc4_bo_stats_debugfs ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC7(dev);
	int i;

	/* Create the initial set of BO labels that the kernel will
	 * use.  This lets us avoid a bunch of string reallocation in
	 * the kernel's draw and BO allocation paths.
	 */
	vc4->bo_labels = FUNC4(VC4_BO_TYPE_COUNT, sizeof(*vc4->bo_labels),
				 GFP_KERNEL);
	if (!vc4->bo_labels)
		return -ENOMEM;
	vc4->num_labels = VC4_BO_TYPE_COUNT;

	FUNC1(FUNC0(bo_type_names) != VC4_BO_TYPE_COUNT);
	for (i = 0; i < VC4_BO_TYPE_COUNT; i++)
		vc4->bo_labels[i].name = bo_type_names[i];

	FUNC5(&vc4->bo_lock);

	FUNC8(dev, "bo_stats", vc4_bo_stats_debugfs, NULL);

	FUNC2(&vc4->bo_cache.time_list);

	FUNC3(&vc4->bo_cache.time_work, vc4_bo_cache_time_work);
	FUNC6(&vc4->bo_cache.time_timer, vc4_bo_cache_time_timer, 0);

	return 0;
}