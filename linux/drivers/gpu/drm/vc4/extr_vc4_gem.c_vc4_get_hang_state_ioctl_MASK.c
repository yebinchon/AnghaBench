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
typedef  size_t u32 ;
struct drm_vc4_get_hang_state {size_t bo_count; int /*<<< orphan*/  bo; } ;
struct vc4_hang_state {int /*<<< orphan*/ * bo; struct drm_vc4_get_hang_state user_state; } ;
struct vc4_dev {int /*<<< orphan*/  job_lock; struct vc4_hang_state* hang_state; int /*<<< orphan*/  v3d; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
struct TYPE_4__ {TYPE_1__ base; int /*<<< orphan*/  paddr; } ;
struct vc4_bo {TYPE_2__ base; } ;
struct drm_vc4_get_hang_state_bo {size_t handle; int /*<<< orphan*/  size; int /*<<< orphan*/  paddr; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct drm_vc4_get_hang_state_bo*,int) ; 
 int FUNC2 (struct drm_file*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_file*,size_t) ; 
 struct drm_vc4_get_hang_state_bo* FUNC4 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_vc4_get_hang_state_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_vc4_get_hang_state*,struct drm_vc4_get_hang_state*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_bo* FUNC9 (int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*,struct vc4_hang_state*) ; 

int
FUNC13(struct drm_device *dev, void *data,
			 struct drm_file *file_priv)
{
	struct drm_vc4_get_hang_state *get_state = data;
	struct drm_vc4_get_hang_state_bo *bo_state;
	struct vc4_hang_state *kernel_state;
	struct drm_vc4_get_hang_state *state;
	struct vc4_dev *vc4 = FUNC10(dev);
	unsigned long irqflags;
	u32 i;
	int ret = 0;

	if (!vc4->v3d) {
		FUNC0("VC4_GET_HANG_STATE with no VC4 V3D probed\n");
		return -ENODEV;
	}

	FUNC7(&vc4->job_lock, irqflags);
	kernel_state = vc4->hang_state;
	if (!kernel_state) {
		FUNC8(&vc4->job_lock, irqflags);
		return -ENOENT;
	}
	state = &kernel_state->user_state;

	/* If the user's array isn't big enough, just return the
	 * required array size.
	 */
	if (get_state->bo_count < state->bo_count) {
		get_state->bo_count = state->bo_count;
		FUNC8(&vc4->job_lock, irqflags);
		return 0;
	}

	vc4->hang_state = NULL;
	FUNC8(&vc4->job_lock, irqflags);

	/* Save the user's BO pointer, so we don't stomp it with the memcpy. */
	state->bo = get_state->bo;
	FUNC6(get_state, state, sizeof(*state));

	bo_state = FUNC4(state->bo_count, sizeof(*bo_state), GFP_KERNEL);
	if (!bo_state) {
		ret = -ENOMEM;
		goto err_free;
	}

	for (i = 0; i < state->bo_count; i++) {
		struct vc4_bo *vc4_bo = FUNC9(kernel_state->bo[i]);
		u32 handle;

		ret = FUNC2(file_priv, kernel_state->bo[i],
					    &handle);

		if (ret) {
			state->bo_count = i;
			goto err_delete_handle;
		}
		bo_state[i].handle = handle;
		bo_state[i].paddr = vc4_bo->base.paddr;
		bo_state[i].size = vc4_bo->base.base.size;
	}

	if (FUNC1(FUNC11(get_state->bo),
			 bo_state,
			 state->bo_count * sizeof(*bo_state)))
		ret = -EFAULT;

err_delete_handle:
	if (ret) {
		for (i = 0; i < state->bo_count; i++)
			FUNC3(file_priv, bo_state[i].handle);
	}

err_free:
	FUNC12(dev, kernel_state);
	FUNC5(bo_state);

	return ret;
}