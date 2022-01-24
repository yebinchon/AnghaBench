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
typedef  int u32 ;
struct v3d_dev {int /*<<< orphan*/  pt_paddr; scalar_t__ pt; int /*<<< orphan*/  dev; int /*<<< orphan*/  mm; int /*<<< orphan*/  cache_clean_lock; int /*<<< orphan*/  sched_lock; int /*<<< orphan*/  reset_lock; int /*<<< orphan*/  bo_lock; int /*<<< orphan*/  job_lock; int /*<<< orphan*/  mm_lock; TYPE_1__* queue; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fence_context; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int V3D_MAX_QUEUES ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct v3d_dev* FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct v3d_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct v3d_dev*) ; 
 int FUNC11 (struct v3d_dev*) ; 

int
FUNC12(struct drm_device *dev)
{
	struct v3d_dev *v3d = FUNC8(dev);
	u32 pt_size = 4096 * 1024;
	int ret, i;

	for (i = 0; i < V3D_MAX_QUEUES; i++)
		v3d->queue[i].fence_context = FUNC2(1);

	FUNC7(&v3d->mm_lock);
	FUNC7(&v3d->job_lock);
	FUNC6(&v3d->bo_lock);
	FUNC6(&v3d->reset_lock);
	FUNC6(&v3d->sched_lock);
	FUNC6(&v3d->cache_clean_lock);

	/* Note: We don't allocate address 0.  Various bits of HW
	 * treat 0 as special, such as the occlusion query counters
	 * where 0 means "disabled".
	 */
	FUNC4(&v3d->mm, 1, pt_size / sizeof(u32) - 1);

	v3d->pt = FUNC1(v3d->dev, pt_size,
			       &v3d->pt_paddr,
			       GFP_KERNEL | __GFP_NOWARN | __GFP_ZERO);
	if (!v3d->pt) {
		FUNC5(&v3d->mm);
		FUNC0(v3d->dev,
			"Failed to allocate page tables. "
			"Please ensure you have CMA enabled.\n");
		return -ENOMEM;
	}

	FUNC9(v3d);
	FUNC10(v3d);

	ret = FUNC11(v3d);
	if (ret) {
		FUNC5(&v3d->mm);
		FUNC3(v3d->dev, 4096 * 1024, (void *)v3d->pt,
				  v3d->pt_paddr);
	}

	return 0;
}