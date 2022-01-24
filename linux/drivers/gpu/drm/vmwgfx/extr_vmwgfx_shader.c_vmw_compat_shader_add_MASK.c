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
typedef  int /*<<< orphan*/  u32 ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_cmdbuf_res_manager {int dummy; } ;
struct vmw_buffer_object {int /*<<< orphan*/  base; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct ttm_bo_kmap_obj {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  SVGA3dShaderType ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (size_t) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct vmw_buffer_object* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct ttm_bo_kmap_obj*) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_bo_kmap_obj*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_bo_kmap_obj*,int*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  vmw_bo_bo_free ; 
 int FUNC11 (struct vmw_private*,struct vmw_buffer_object*,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vmw_buffer_object**) ; 
 int FUNC13 (struct vmw_cmdbuf_res_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmw_resource*,struct list_head*) ; 
 int /*<<< orphan*/  vmw_cmdbuf_res_shader ; 
 int /*<<< orphan*/  FUNC14 (struct vmw_resource**) ; 
 struct vmw_resource* FUNC15 (struct vmw_private*,struct vmw_buffer_object*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmw_sys_ne_placement ; 
 int /*<<< orphan*/  vmw_sys_placement ; 

int FUNC18(struct vmw_private *dev_priv,
			  struct vmw_cmdbuf_res_manager *man,
			  u32 user_key, const void *bytecode,
			  SVGA3dShaderType shader_type,
			  size_t size,
			  struct list_head *list)
{
	struct ttm_operation_ctx ctx = { false, true };
	struct vmw_buffer_object *buf;
	struct ttm_bo_kmap_obj map;
	bool is_iomem;
	int ret;
	struct vmw_resource *res;

	if (!FUNC16(user_key, shader_type))
		return -EINVAL;

	/* Allocate and pin a DMA buffer */
	buf = FUNC2(sizeof(*buf), GFP_KERNEL);
	if (FUNC10(!buf))
		return -ENOMEM;

	ret = FUNC11(dev_priv, buf, size, &vmw_sys_ne_placement,
			      true, vmw_bo_bo_free);
	if (FUNC10(ret != 0))
		goto out;

	ret = FUNC6(&buf->base, false, true, NULL);
	if (FUNC10(ret != 0))
		goto no_reserve;

	/* Map and copy shader bytecode. */
	ret = FUNC4(&buf->base, 0, FUNC0(size) >> PAGE_SHIFT,
			  &map);
	if (FUNC10(ret != 0)) {
		FUNC7(&buf->base);
		goto no_reserve;
	}

	FUNC3(FUNC9(&map, &is_iomem), bytecode, size);
	FUNC1(is_iomem);

	FUNC5(&map);
	ret = FUNC8(&buf->base, &vmw_sys_placement, &ctx);
	FUNC1(ret != 0);
	FUNC7(&buf->base);

	res = FUNC15(dev_priv, buf, size, 0, shader_type);
	if (FUNC10(ret != 0))
		goto no_reserve;

	ret = FUNC13(man, vmw_cmdbuf_res_shader,
				 FUNC17(user_key, shader_type),
				 res, list);
	FUNC14(&res);
no_reserve:
	FUNC12(&buf);
out:
	return ret;
}