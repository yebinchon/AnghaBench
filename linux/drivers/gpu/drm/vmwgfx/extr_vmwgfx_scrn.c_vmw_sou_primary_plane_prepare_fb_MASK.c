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
struct vmw_private {int dummy; } ;
struct vmw_plane_state {size_t bo_size; int /*<<< orphan*/ * bo; } ;
struct drm_plane_state {int crtc_w; int crtc_h; struct drm_crtc* crtc; struct drm_framebuffer* fb; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmw_bo_bo_free ; 
 int FUNC1 (struct vmw_private*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vmw_private*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*) ; 
 struct vmw_plane_state* FUNC6 (struct drm_plane_state*) ; 
 struct vmw_private* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_private*) ; 
 int /*<<< orphan*/  vmw_vram_ne_placement ; 

__attribute__((used)) static int
FUNC9(struct drm_plane *plane,
				 struct drm_plane_state *new_state)
{
	struct drm_framebuffer *new_fb = new_state->fb;
	struct drm_crtc *crtc = plane->state->crtc ?: new_state->crtc;
	struct vmw_plane_state *vps = FUNC6(new_state);
	struct vmw_private *dev_priv;
	size_t size;
	int ret;


	if (!new_fb) {
		FUNC3(&vps->bo);
		vps->bo_size = 0;

		return 0;
	}

	size = new_state->crtc_w * new_state->crtc_h * 4;
	dev_priv = FUNC7(crtc->dev);

	if (vps->bo) {
		if (vps->bo_size == size) {
			/*
			 * Note that this might temporarily up the pin-count
			 * to 2, until cleanup_fb() is called.
			 */
			return FUNC2(dev_priv, vps->bo,
						      true);
		}

		FUNC3(&vps->bo);
		vps->bo_size = 0;
	}

	vps->bo = FUNC0(sizeof(*vps->bo), GFP_KERNEL);
	if (!vps->bo)
		return -ENOMEM;

	FUNC8(dev_priv);

	/* After we have alloced the backing store might not be able to
	 * resume the overlays, this is preferred to failing to alloc.
	 */
	FUNC4(dev_priv);
	ret = FUNC1(dev_priv, vps->bo, size,
			      &vmw_vram_ne_placement,
			      false, &vmw_bo_bo_free);
	FUNC5(dev_priv);
	if (ret) {
		vps->bo = NULL; /* vmw_bo_init frees on error */
		return ret;
	}

	vps->bo_size = size;

	/*
	 * TTM already thinks the buffer is pinned, but make sure the
	 * pin_count is upped.
	 */
	return FUNC2(dev_priv, vps->bo, true);
}