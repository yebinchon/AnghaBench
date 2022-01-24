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
typedef  int u32 ;
struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int /*<<< orphan*/  base; } ;
struct ttm_bo_kmap_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long,struct ttm_bo_kmap_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_bo_kmap_obj*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct ttm_bo_kmap_obj*,int*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct vmw_private*,void*,int,int,int,int) ; 

__attribute__((used)) static int FUNC8(struct vmw_private *dev_priv,
				struct vmw_buffer_object *bo,
				u32 width, u32 height,
				u32 hotspotX, u32 hotspotY)
{
	struct ttm_bo_kmap_obj map;
	unsigned long kmap_offset;
	unsigned long kmap_num;
	void *virtual;
	bool dummy;
	int ret;

	kmap_offset = 0;
	kmap_num = (width*height*4 + PAGE_SIZE - 1) >> PAGE_SHIFT;

	ret = FUNC3(&bo->base, true, false, NULL);
	if (FUNC6(ret != 0)) {
		FUNC0("reserve failed\n");
		return -EINVAL;
	}

	ret = FUNC1(&bo->base, kmap_offset, kmap_num, &map);
	if (FUNC6(ret != 0))
		goto err_unreserve;

	virtual = FUNC5(&map, &dummy);
	ret = FUNC7(dev_priv, virtual, width, height,
				      hotspotX, hotspotY);

	FUNC2(&map);
err_unreserve:
	FUNC4(&bo->base);

	return ret;
}