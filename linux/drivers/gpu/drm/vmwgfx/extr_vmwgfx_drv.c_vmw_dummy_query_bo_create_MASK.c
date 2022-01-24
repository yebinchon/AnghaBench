#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vmw_private {struct vmw_buffer_object* dummy_query_bo; } ;
struct vmw_buffer_object {int /*<<< orphan*/  base; } ;
struct ttm_bo_kmap_obj {int dummy; } ;
struct TYPE_3__ {int totalSize; int result32; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SVGA3dQueryResult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SVGA3D_QUERYSTATE_PENDING ; 
 struct vmw_buffer_object* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct ttm_bo_kmap_obj*) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_bo_kmap_obj*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct ttm_bo_kmap_obj*,int*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  vmw_bo_bo_free ; 
 int FUNC10 (struct vmw_private*,struct vmw_buffer_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vmw_buffer_object*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vmw_buffer_object**) ; 
 int /*<<< orphan*/  vmw_sys_ne_placement ; 

__attribute__((used)) static int FUNC13(struct vmw_private *dev_priv)
{
	int ret;
	struct vmw_buffer_object *vbo;
	struct ttm_bo_kmap_obj map;
	volatile SVGA3dQueryResult *result;
	bool dummy;

	/*
	 * Create the vbo as pinned, so that a tryreserve will
	 * immediately succeed. This is because we're the only
	 * user of the bo currently.
	 */
	vbo = FUNC2(sizeof(*vbo), GFP_KERNEL);
	if (!vbo)
		return -ENOMEM;

	ret = FUNC10(dev_priv, vbo, PAGE_SIZE,
			  &vmw_sys_ne_placement, false,
			  &vmw_bo_bo_free);
	if (FUNC9(ret != 0))
		return ret;

	ret = FUNC6(&vbo->base, false, true, NULL);
	FUNC0(ret != 0);
	FUNC11(vbo, true);

	ret = FUNC4(&vbo->base, 0, 1, &map);
	if (FUNC3(ret == 0)) {
		result = FUNC8(&map, &dummy);
		result->totalSize = sizeof(*result);
		result->state = SVGA3D_QUERYSTATE_PENDING;
		result->result32 = 0xff;
		FUNC5(&map);
	}
	FUNC11(vbo, false);
	FUNC7(&vbo->base);

	if (FUNC9(ret != 0)) {
		FUNC1("Dummy query buffer map failed.\n");
		FUNC12(&vbo);
	} else
		dev_priv->dummy_query_bo = vbo;

	return ret;
}