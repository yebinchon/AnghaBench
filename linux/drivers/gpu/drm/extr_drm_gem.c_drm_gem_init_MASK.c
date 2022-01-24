#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_vma_offset_manager {int dummy; } ;
struct drm_device {struct drm_vma_offset_manager* vma_offset_manager; int /*<<< orphan*/  object_name_idr; int /*<<< orphan*/  object_name_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_FILE_PAGE_OFFSET_SIZE ; 
 int /*<<< orphan*/  DRM_FILE_PAGE_OFFSET_START ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_vma_offset_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct drm_vma_offset_manager* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct drm_device *dev)
{
	struct drm_vma_offset_manager *vma_offset_manager;

	FUNC4(&dev->object_name_lock);
	FUNC2(&dev->object_name_idr, 1);

	vma_offset_manager = FUNC3(sizeof(*vma_offset_manager), GFP_KERNEL);
	if (!vma_offset_manager) {
		FUNC0("out of memory\n");
		return -ENOMEM;
	}

	dev->vma_offset_manager = vma_offset_manager;
	FUNC1(vma_offset_manager,
				    DRM_FILE_PAGE_OFFSET_START,
				    DRM_FILE_PAGE_OFFSET_SIZE);

	return 0;
}