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
struct virtio_gpu_output {int /*<<< orphan*/  index; scalar_t__ enabled; } ;
struct virtio_gpu_object {scalar_t__ dumb; scalar_t__ hw_res_handle; } ;
struct TYPE_3__ {int /*<<< orphan*/ * obj; } ;
struct virtio_gpu_framebuffer {TYPE_1__ base; } ;
struct virtio_gpu_device {int dummy; } ;
struct drm_plane_state {scalar_t__ crtc; } ;
struct drm_plane {TYPE_2__* state; struct drm_device* dev; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;
struct TYPE_4__ {int src_w; int src_h; int src_x; int src_y; int /*<<< orphan*/  crtc_y; int /*<<< orphan*/  crtc_x; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_w; scalar_t__ fb; scalar_t__ crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct virtio_gpu_output* FUNC3 (scalar_t__) ; 
 struct virtio_gpu_object* FUNC4 (int /*<<< orphan*/ ) ; 
 struct virtio_gpu_framebuffer* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_gpu_device*,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_gpu_device*,int /*<<< orphan*/ ,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_gpu_device*,struct virtio_gpu_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct drm_plane *plane,
					    struct drm_plane_state *old_state)
{
	struct drm_device *dev = plane->dev;
	struct virtio_gpu_device *vgdev = dev->dev_private;
	struct virtio_gpu_output *output = NULL;
	struct virtio_gpu_framebuffer *vgfb;
	struct virtio_gpu_object *bo;
	uint32_t handle;

	if (plane->state->crtc)
		output = FUNC3(plane->state->crtc);
	if (old_state->crtc)
		output = FUNC3(old_state->crtc);
	if (FUNC1(!output))
		return;

	if (plane->state->fb && output->enabled) {
		vgfb = FUNC5(plane->state->fb);
		bo = FUNC4(vgfb->base.obj[0]);
		handle = bo->hw_res_handle;
		if (bo->dumb) {
			FUNC8
				(vgdev, bo, 0,
				 FUNC2(plane->state->src_w >> 16),
				 FUNC2(plane->state->src_h >> 16),
				 FUNC2(plane->state->src_x >> 16),
				 FUNC2(plane->state->src_y >> 16), NULL);
		}
	} else {
		handle = 0;
	}

	FUNC0("handle 0x%x, crtc %dx%d+%d+%d, src %dx%d+%d+%d\n", handle,
		  plane->state->crtc_w, plane->state->crtc_h,
		  plane->state->crtc_x, plane->state->crtc_y,
		  plane->state->src_w >> 16,
		  plane->state->src_h >> 16,
		  plane->state->src_x >> 16,
		  plane->state->src_y >> 16);
	FUNC7(vgdev, output->index, handle,
				   plane->state->src_w >> 16,
				   plane->state->src_h >> 16,
				   plane->state->src_x >> 16,
				   plane->state->src_y >> 16);
	if (handle)
		FUNC6(vgdev, handle,
					      plane->state->src_x >> 16,
					      plane->state->src_y >> 16,
					      plane->state->src_w >> 16,
					      plane->state->src_h >> 16);
}