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
struct vmw_resource {size_t backup_size; int /*<<< orphan*/  id; struct vmw_buffer_object* backup; struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;
struct vmw_cotable {size_t size_read_back; int /*<<< orphan*/  type; } ;
struct ttm_buffer_object {size_t num_pages; } ;
struct vmw_buffer_object {struct ttm_buffer_object base; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct ttm_bo_kmap_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vmw_buffer_object* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ttm_buffer_object*,size_t,int,struct ttm_bo_kmap_obj*) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_bo_kmap_obj*) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_buffer_object*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_buffer_object*) ; 
 int FUNC8 (struct ttm_buffer_object*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 int FUNC9 (struct ttm_buffer_object*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ttm_bo_kmap_obj*,int*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  vmw_bo_bo_free ; 
 int FUNC12 (struct vmw_private*,struct vmw_buffer_object*,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vmw_buffer_object**) ; 
 struct vmw_cotable* FUNC14 (struct vmw_resource*) ; 
 int FUNC15 (struct vmw_resource*) ; 
 int FUNC16 (struct vmw_resource*) ; 
 int /*<<< orphan*/  vmw_mob_ne_placement ; 
 int /*<<< orphan*/  vmw_mob_placement ; 
 int /*<<< orphan*/  FUNC17 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC18 (struct vmw_resource*) ; 

__attribute__((used)) static int FUNC19(struct vmw_resource *res, size_t new_size)
{
	struct ttm_operation_ctx ctx = { false, false };
	struct vmw_private *dev_priv = res->dev_priv;
	struct vmw_cotable *vcotbl = FUNC14(res);
	struct vmw_buffer_object *buf, *old_buf = res->backup;
	struct ttm_buffer_object *bo, *old_bo = &res->backup->base;
	size_t old_size = res->backup_size;
	size_t old_size_read_back = vcotbl->size_read_back;
	size_t cur_size_read_back;
	struct ttm_bo_kmap_obj old_map, new_map;
	int ret;
	size_t i;

	ret = FUNC15(res);
	if (ret)
		return ret;

	cur_size_read_back = vcotbl->size_read_back;
	vcotbl->size_read_back = old_size_read_back;

	/*
	 * While device is processing, Allocate and reserve a buffer object
	 * for the new COTable. Initially pin the buffer object to make sure
	 * we can use tryreserve without failure.
	 */
	buf = FUNC2(sizeof(*buf), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	ret = FUNC12(dev_priv, buf, new_size, &vmw_mob_ne_placement,
			  true, vmw_bo_bo_free);
	if (ret) {
		FUNC0("Failed initializing new cotable MOB.\n");
		return ret;
	}

	bo = &buf->base;
	FUNC1(FUNC6(bo, false, true, NULL));

	ret = FUNC9(old_bo, false, false);
	if (FUNC11(ret != 0)) {
		FUNC0("Failed waiting for cotable unbind.\n");
		goto out_wait;
	}

	/*
	 * Do a page by page copy of COTables. This eliminates slow vmap()s.
	 * This should really be a TTM utility.
	 */
	for (i = 0; i < old_bo->num_pages; ++i) {
		bool dummy;

		ret = FUNC4(old_bo, i, 1, &old_map);
		if (FUNC11(ret != 0)) {
			FUNC0("Failed mapping old COTable on resize.\n");
			goto out_wait;
		}
		ret = FUNC4(bo, i, 1, &new_map);
		if (FUNC11(ret != 0)) {
			FUNC0("Failed mapping new COTable on resize.\n");
			goto out_map_new;
		}
		FUNC3(FUNC10(&new_map, &dummy),
		       FUNC10(&old_map, &dummy),
		       PAGE_SIZE);
		FUNC5(&new_map);
		FUNC5(&old_map);
	}

	/* Unpin new buffer, and switch backup buffers. */
	ret = FUNC8(bo, &vmw_mob_placement, &ctx);
	if (FUNC11(ret != 0)) {
		FUNC0("Failed validating new COTable backup buffer.\n");
		goto out_wait;
	}

	FUNC18(res);
	res->backup = buf;
	res->backup_size = new_size;
	vcotbl->size_read_back = cur_size_read_back;

	/*
	 * Now tell the device to switch. If this fails, then we need to
	 * revert the full resize.
	 */
	ret = FUNC16(res);
	if (ret) {
		FUNC0("Failed switching COTable backup buffer.\n");
		res->backup = old_buf;
		res->backup_size = old_size;
		vcotbl->size_read_back = old_size_read_back;
		FUNC17(res);
		goto out_wait;
	}

	FUNC17(res);
	/* Let go of the old mob. */
	FUNC13(&old_buf);
	res->id = vcotbl->type;

	return 0;

out_map_new:
	FUNC5(&old_map);
out_wait:
	FUNC7(bo);
	FUNC13(&buf);

	return ret;
}