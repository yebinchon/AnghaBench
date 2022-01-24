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
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  void* u32 ;
struct drm_gem_vram_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct ast_private {int next_cursor; struct drm_gem_object* cursor_cache; } ;
struct ast_crtc {void* offset_y; void* offset_x; } ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {struct ast_private* dev_private; } ;

/* Variables and functions */
 int AST_DEFAULT_HWC_NUM ; 
 int AST_HWC_SIGNATURE_HOTSPOTX ; 
 int AST_HWC_SIGNATURE_HOTSPOTY ; 
 int AST_HWC_SIGNATURE_SIZE ; 
 int AST_HWC_SIGNATURE_SizeX ; 
 int AST_HWC_SIGNATURE_SizeY ; 
 int AST_HWC_SIZE ; 
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
 void* AST_MAX_HWC_HEIGHT ; 
 void* AST_MAX_HWC_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ast_private*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void*) ; 
 struct drm_gem_object* FUNC7 (struct drm_file*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_gem_object*) ; 
 int /*<<< orphan*/ * FUNC9 (struct drm_gem_vram_object*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_gem_vram_object*) ; 
 struct drm_gem_vram_object* FUNC11 (struct drm_gem_object*) ; 
 scalar_t__ FUNC12 (struct drm_gem_vram_object*) ; 
 int FUNC13 (struct drm_gem_vram_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_gem_vram_object*) ; 
 struct ast_crtc* FUNC15 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC16 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct drm_crtc *crtc,
			  struct drm_file *file_priv,
			  uint32_t handle,
			  uint32_t width,
			  uint32_t height)
{
	struct ast_private *ast = crtc->dev->dev_private;
	struct ast_crtc *ast_crtc = FUNC15(crtc);
	struct drm_gem_object *obj;
	struct drm_gem_vram_object *gbo;
	s64 dst_gpu;
	u64 gpu_addr;
	u32 csum;
	int ret;
	u8 *src, *dst;

	if (!handle) {
		FUNC3(crtc);
		return 0;
	}

	if (width > AST_MAX_HWC_WIDTH || height > AST_MAX_HWC_HEIGHT)
		return -EINVAL;

	obj = FUNC7(file_priv, handle);
	if (!obj) {
		FUNC0("Cannot find cursor object %x for crtc\n", handle);
		return -ENOENT;
	}
	gbo = FUNC11(obj);

	ret = FUNC13(gbo, 0);
	if (ret)
		goto err_drm_gem_object_put_unlocked;
	src = FUNC9(gbo, true, NULL);
	if (FUNC1(src)) {
		ret = FUNC2(src);
		goto err_drm_gem_vram_unpin;
	}

	dst = FUNC9(FUNC11(ast->cursor_cache),
				false, NULL);
	if (FUNC1(dst)) {
		ret = FUNC2(dst);
		goto err_drm_gem_vram_kunmap;
	}
	dst_gpu = FUNC12(FUNC11(ast->cursor_cache));
	if (dst_gpu < 0) {
		ret = (int)dst_gpu;
		goto err_drm_gem_vram_kunmap;
	}

	dst += (AST_HWC_SIZE + AST_HWC_SIGNATURE_SIZE)*ast->next_cursor;

	/* do data transfer to cursor cache */
	csum = FUNC6(src, dst, width, height);

	/* write checksum + signature */
	{
		struct drm_gem_vram_object *dst_gbo =
			FUNC11(ast->cursor_cache);
		u8 *dst = FUNC9(dst_gbo, false, NULL);
		dst += (AST_HWC_SIZE + AST_HWC_SIGNATURE_SIZE)*ast->next_cursor + AST_HWC_SIZE;
		FUNC16(csum, dst);
		FUNC16(width, dst + AST_HWC_SIGNATURE_SizeX);
		FUNC16(height, dst + AST_HWC_SIGNATURE_SizeY);
		FUNC16(0, dst + AST_HWC_SIGNATURE_HOTSPOTX);
		FUNC16(0, dst + AST_HWC_SIGNATURE_HOTSPOTY);

		/* set pattern offset */
		gpu_addr = (u64)dst_gpu;
		gpu_addr += (AST_HWC_SIZE + AST_HWC_SIGNATURE_SIZE)*ast->next_cursor;
		gpu_addr >>= 3;
		FUNC4(ast, AST_IO_CRTC_PORT, 0xc8, gpu_addr & 0xff);
		FUNC4(ast, AST_IO_CRTC_PORT, 0xc9, (gpu_addr >> 8) & 0xff);
		FUNC4(ast, AST_IO_CRTC_PORT, 0xca, (gpu_addr >> 16) & 0xff);
	}
	ast_crtc->offset_x = AST_MAX_HWC_WIDTH - width;
	ast_crtc->offset_y = AST_MAX_HWC_WIDTH - height;

	ast->next_cursor = (ast->next_cursor + 1) % AST_DEFAULT_HWC_NUM;

	FUNC5(crtc);

	FUNC10(gbo);
	FUNC14(gbo);
	FUNC8(obj);

	return 0;

err_drm_gem_vram_kunmap:
	FUNC10(gbo);
err_drm_gem_vram_unpin:
	FUNC14(gbo);
err_drm_gem_object_put_unlocked:
	FUNC8(obj);
	return ret;
}