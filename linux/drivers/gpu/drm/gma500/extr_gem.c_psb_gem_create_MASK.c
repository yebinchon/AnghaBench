#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {TYPE_1__* filp; } ;
struct gtt_range {TYPE_2__ gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  f_mapping; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_DMA32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*,...) ; 
 int FUNC1 (struct drm_file*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct drm_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct gtt_range* FUNC6 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct gtt_range*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct drm_file *file, struct drm_device *dev, u64 size,
		   u32 *handlep, int stolen, u32 align)
{
	struct gtt_range *r;
	int ret;
	u32 handle;

	size = FUNC8(size, PAGE_SIZE);

	/* Allocate our object - for now a direct gtt range which is not
	   stolen memory backed */
	r = FUNC6(dev, size, "gem", 0, PAGE_SIZE);
	if (r == NULL) {
		FUNC0(dev->dev, "no memory for %lld byte GEM object\n", size);
		return -ENOSPC;
	}
	/* Initialize the extra goodies GEM needs to do all the hard work */
	if (FUNC2(dev, &r->gem, size) != 0) {
		FUNC7(dev, r);
		/* GEM doesn't give an error code so use -ENOMEM */
		FUNC0(dev->dev, "GEM init failed for %lld\n", size);
		return -ENOMEM;
	}
	/* Limit the object to 32bit mappings */
	FUNC5(r->gem.filp->f_mapping, GFP_KERNEL | __GFP_DMA32);
	/* Give the object a handle so we can carry it more easily */
	ret = FUNC1(file, &r->gem, &handle);
	if (ret) {
		FUNC0(dev->dev, "GEM handle failed for %p, %lld\n",
							&r->gem, size);
		FUNC4(&r->gem);
		FUNC7(dev, r);
		return ret;
	}
	/* We have the initial and handle reference but need only one now */
	FUNC3(&r->gem);
	*handlep = handle;
	return 0;
}