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
struct i915_vma {int dummy; } ;
struct TYPE_3__ {struct i915_vma* vma; struct i915_vma* vaddr; } ;
struct i915_perf_stream {TYPE_1__ oa_buffer; struct drm_i915_private* dev_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
typedef  struct i915_vma drm_i915_gem_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  I915_CACHE_LLC ; 
 int /*<<< orphan*/  I915_MAP_WB ; 
 scalar_t__ FUNC4 (struct i915_vma*) ; 
 scalar_t__ OA_BUFFER_SIZE ; 
 int FUNC5 (struct i915_vma*) ; 
 scalar_t__ SZ_128K ; 
 scalar_t__ SZ_16M ; 
 scalar_t__ FUNC6 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*) ; 
 struct i915_vma* FUNC8 (struct drm_i915_private*,scalar_t__) ; 
 struct i915_vma* FUNC9 (struct i915_vma*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC10 (struct i915_vma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC12 (struct i915_vma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct i915_vma*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct i915_perf_stream *stream)
{
	struct drm_i915_gem_object *bo;
	struct drm_i915_private *dev_priv = stream->dev_priv;
	struct i915_vma *vma;
	int ret;

	if (FUNC6(stream->oa_buffer.vma))
		return -ENODEV;

	ret = FUNC14(&dev_priv->drm);
	if (ret)
		return ret;

	FUNC1(OA_BUFFER_SIZE);
	FUNC0(OA_BUFFER_SIZE < SZ_128K || OA_BUFFER_SIZE > SZ_16M);

	bo = FUNC8(dev_priv, OA_BUFFER_SIZE);
	if (FUNC4(bo)) {
		FUNC3("Failed to allocate OA buffer\n");
		ret = FUNC5(bo);
		goto unlock;
	}

	FUNC12(bo, I915_CACHE_LLC);

	/* PreHSW required 512K alignment, HSW requires 16M */
	vma = FUNC9(bo, NULL, 0, SZ_16M, 0);
	if (FUNC4(vma)) {
		ret = FUNC5(vma);
		goto err_unref;
	}
	stream->oa_buffer.vma = vma;

	stream->oa_buffer.vaddr =
		FUNC10(bo, I915_MAP_WB);
	if (FUNC4(stream->oa_buffer.vaddr)) {
		ret = FUNC5(stream->oa_buffer.vaddr);
		goto err_unpin;
	}

	FUNC2("OA Buffer initialized, gtt offset = 0x%x, vaddr = %p\n",
			 FUNC13(stream->oa_buffer.vma),
			 stream->oa_buffer.vaddr);

	goto unlock;

err_unpin:
	FUNC7(vma);

err_unref:
	FUNC11(bo);

	stream->oa_buffer.vaddr = NULL;
	stream->oa_buffer.vma = NULL;

unlock:
	FUNC15(&dev_priv->drm.struct_mutex);
	return ret;
}