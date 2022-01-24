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
typedef  scalar_t__ uint32_t ;
struct vc4_shader_state {int dummy; } ;
struct vc4_exec_info {void* shader_rec_u; void* uniforms_u; int shader_state_size; scalar_t__ shader_rec_size; scalar_t__ uniforms_size; int /*<<< orphan*/  bin_dep_seqno; int /*<<< orphan*/  bin_bo_used; scalar_t__ found_tile_binning_mode_config_packet; TYPE_1__* exec_bo; scalar_t__ uniforms_p; scalar_t__ uniforms_v; scalar_t__ shader_rec_p; scalar_t__ shader_rec_v; void* bin_u; scalar_t__ ct0ca; int /*<<< orphan*/  unref_list; void* shader_state; struct drm_vc4_submit_cl* args; } ;
struct vc4_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ paddr; scalar_t__ vaddr; int /*<<< orphan*/  base; } ;
struct vc4_bo {TYPE_1__ base; } ;
struct drm_vc4_submit_cl {scalar_t__ bin_cl_size; scalar_t__ shader_rec_size; scalar_t__ uniforms_size; int shader_rec_count; int /*<<< orphan*/  uniforms; int /*<<< orphan*/  shader_rec; int /*<<< orphan*/  bin_cl; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  unref_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct vc4_bo*) ; 
 int FUNC3 (struct vc4_bo*) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  VC4_BO_TYPE_BCL ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct vc4_bo* FUNC12 (struct drm_device*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct vc4_dev*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct drm_device*,scalar_t__,void*,struct vc4_exec_info*) ; 
 int FUNC15 (struct drm_device*,struct vc4_exec_info*) ; 
 int FUNC16 (struct drm_device*,int /*<<< orphan*/ ,unsigned long long,int) ; 

__attribute__((used)) static int
FUNC17(struct drm_device *dev, struct vc4_exec_info *exec)
{
	struct drm_vc4_submit_cl *args = exec->args;
	struct vc4_dev *vc4 = FUNC10(dev);
	void *temp = NULL;
	void *bin;
	int ret = 0;
	uint32_t bin_offset = 0;
	uint32_t shader_rec_offset = FUNC8(bin_offset + args->bin_cl_size,
					     16);
	uint32_t uniforms_offset = shader_rec_offset + args->shader_rec_size;
	uint32_t exec_size = uniforms_offset + args->uniforms_size;
	uint32_t temp_size = exec_size + (sizeof(struct vc4_shader_state) *
					  args->shader_rec_count);
	struct vc4_bo *bo;

	if (shader_rec_offset < args->bin_cl_size ||
	    uniforms_offset < shader_rec_offset ||
	    exec_size < uniforms_offset ||
	    args->shader_rec_count >= (UINT_MAX /
					  sizeof(struct vc4_shader_state)) ||
	    temp_size < exec_size) {
		FUNC0("overflow in exec arguments\n");
		ret = -EINVAL;
		goto fail;
	}

	/* Allocate space where we'll store the copied in user command lists
	 * and shader records.
	 *
	 * We don't just copy directly into the BOs because we need to
	 * read the contents back for validation, and I think the
	 * bo->vaddr is uncached access.
	 */
	temp = FUNC6(temp_size, 1, GFP_KERNEL);
	if (!temp) {
		FUNC1("Failed to allocate storage for copying "
			  "in bin/render CLs.\n");
		ret = -ENOMEM;
		goto fail;
	}
	bin = temp + bin_offset;
	exec->shader_rec_u = temp + shader_rec_offset;
	exec->uniforms_u = temp + uniforms_offset;
	exec->shader_state = temp + exec_size;
	exec->shader_state_size = args->shader_rec_count;

	if (FUNC4(bin,
			   FUNC11(args->bin_cl),
			   args->bin_cl_size)) {
		ret = -EFAULT;
		goto fail;
	}

	if (FUNC4(exec->shader_rec_u,
			   FUNC11(args->shader_rec),
			   args->shader_rec_size)) {
		ret = -EFAULT;
		goto fail;
	}

	if (FUNC4(exec->uniforms_u,
			   FUNC11(args->uniforms),
			   args->uniforms_size)) {
		ret = -EFAULT;
		goto fail;
	}

	bo = FUNC12(dev, exec_size, true, VC4_BO_TYPE_BCL);
	if (FUNC2(bo)) {
		FUNC1("Couldn't allocate BO for binning\n");
		ret = FUNC3(bo);
		goto fail;
	}
	exec->exec_bo = &bo->base;

	FUNC7(&FUNC9(&exec->exec_bo->base)->unref_head,
		      &exec->unref_list);

	exec->ct0ca = exec->exec_bo->paddr + bin_offset;

	exec->bin_u = bin;

	exec->shader_rec_v = exec->exec_bo->vaddr + shader_rec_offset;
	exec->shader_rec_p = exec->exec_bo->paddr + shader_rec_offset;
	exec->shader_rec_size = args->shader_rec_size;

	exec->uniforms_v = exec->exec_bo->vaddr + uniforms_offset;
	exec->uniforms_p = exec->exec_bo->paddr + uniforms_offset;
	exec->uniforms_size = args->uniforms_size;

	ret = FUNC14(dev,
				  exec->exec_bo->vaddr + bin_offset,
				  bin,
				  exec);
	if (ret)
		goto fail;

	ret = FUNC15(dev, exec);
	if (ret)
		goto fail;

	if (exec->found_tile_binning_mode_config_packet) {
		ret = FUNC13(vc4, &exec->bin_bo_used);
		if (ret)
			goto fail;
	}

	/* Block waiting on any previous rendering into the CS's VBO,
	 * IB, or textures, so that pixels are actually written by the
	 * time we try to read them.
	 */
	ret = FUNC16(dev, exec->bin_dep_seqno, ~0ull, true);

fail:
	FUNC5(temp);
	return ret;
}