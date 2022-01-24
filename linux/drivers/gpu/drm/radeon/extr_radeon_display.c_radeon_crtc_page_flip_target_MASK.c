#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct radeon_flip_work {int async; int base; int target_vblank; int /*<<< orphan*/  fence; TYPE_7__* old_rbo; int /*<<< orphan*/  flip_work; int /*<<< orphan*/  crtc_id; struct drm_pending_vblank_event* event; struct radeon_device* rdev; int /*<<< orphan*/  unpin_work; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ flip_status; int /*<<< orphan*/  flip_queue; struct radeon_flip_work* flip_work; scalar_t__ legacy_display_base_addr; int /*<<< orphan*/  crtc_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  resv; } ;
struct TYPE_9__ {TYPE_1__ base; } ;
struct radeon_bo {TYPE_2__ tbo; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int* pitches; TYPE_3__* format; struct drm_gem_object** obj; } ;
struct drm_device {int /*<<< orphan*/  event_lock; TYPE_4__* driver; struct radeon_device* dev_private; } ;
struct drm_crtc {int y; int x; struct drm_device* dev; TYPE_5__* primary; } ;
struct TYPE_13__ {int /*<<< orphan*/  base; } ;
struct TYPE_14__ {TYPE_6__ tbo; } ;
struct TYPE_12__ {struct drm_framebuffer* fb; } ;
struct TYPE_11__ {int (* get_vblank_counter ) (struct drm_device*,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {int* cpp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int DRM_MODE_PAGE_FLIP_ASYNC ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ RADEON_FLIP_NONE ; 
 scalar_t__ RADEON_FLIP_PENDING ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int RADEON_TILING_MACRO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_flip_work*) ; 
 struct radeon_flip_work* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_bo*,int*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct radeon_bo*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC17 (struct radeon_bo*,int) ; 
 scalar_t__ FUNC18 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_bo*) ; 
 int /*<<< orphan*/  radeon_flip_work_func ; 
 int /*<<< orphan*/  radeon_unpin_work_func ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC22 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct radeon_crtc* FUNC23 (struct drm_crtc*) ; 
 scalar_t__ FUNC24 (int) ; 

__attribute__((used)) static int FUNC25(struct drm_crtc *crtc,
					struct drm_framebuffer *fb,
					struct drm_pending_vblank_event *event,
					uint32_t page_flip_flags,
					uint32_t target,
					struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC23(crtc);
	struct drm_gem_object *obj;
	struct radeon_flip_work *work;
	struct radeon_bo *new_rbo;
	uint32_t tiling_flags, pitch_pixels;
	uint64_t base;
	unsigned long flags;
	int r;

	work = FUNC13(sizeof *work, GFP_KERNEL);
	if (work == NULL)
		return -ENOMEM;

	FUNC4(&work->flip_work, radeon_flip_work_func);
	FUNC4(&work->unpin_work, radeon_unpin_work_func);

	work->rdev = rdev;
	work->crtc_id = radeon_crtc->crtc_id;
	work->event = event;
	work->async = (page_flip_flags & DRM_MODE_PAGE_FLIP_ASYNC) != 0;

	/* schedule unpin of the old buffer */
	obj = crtc->primary->fb->obj[0];

	/* take a reference to the old object */
	FUNC9(obj);
	work->old_rbo = FUNC11(obj);

	obj = fb->obj[0];
	new_rbo = FUNC11(obj);

	/* pin the new buffer */
	FUNC2("flip-ioctl() cur_rbo = %p, new_rbo = %p\n",
			 work->old_rbo, new_rbo);

	r = FUNC17(new_rbo, false);
	if (FUNC24(r != 0)) {
		FUNC3("failed to reserve new rbo buffer before flip\n");
		goto cleanup;
	}
	/* Only 27 bit offset for legacy CRTC */
	r = FUNC16(new_rbo, RADEON_GEM_DOMAIN_VRAM,
				     FUNC0(rdev) ? 0 : 1 << 27, &base);
	if (FUNC24(r != 0)) {
		FUNC19(new_rbo);
		r = -EINVAL;
		FUNC3("failed to pin new rbo buffer before flip\n");
		goto cleanup;
	}
	work->fence = FUNC5(FUNC7(new_rbo->tbo.base.resv));
	FUNC15(new_rbo, &tiling_flags, NULL);
	FUNC19(new_rbo);

	if (!FUNC0(rdev)) {
		/* crtc offset is from display base addr not FB location */
		base -= radeon_crtc->legacy_display_base_addr;
		pitch_pixels = fb->pitches[0] / fb->format->cpp[0];

		if (tiling_flags & RADEON_TILING_MACRO) {
			if (FUNC1(rdev)) {
				base &= ~0x7ff;
			} else {
				int byteshift = fb->format->cpp[0] * 8 >> 4;
				int tile_addr = (((crtc->y >> 3) * pitch_pixels +  crtc->x) >> (8 - byteshift)) << 11;
				base += tile_addr + ((crtc->x << byteshift) % 256) + ((crtc->y % 8) << 8);
			}
		} else {
			int offset = crtc->y * pitch_pixels + crtc->x;
			switch (fb->format->cpp[0] * 8) {
			case 8:
			default:
				offset *= 1;
				break;
			case 15:
			case 16:
				offset *= 2;
				break;
			case 24:
				offset *= 3;
				break;
			case 32:
				offset *= 4;
				break;
			}
			base += offset;
		}
		base &= ~7;
	}
	work->base = base;
	work->target_vblank = target - (uint32_t)FUNC8(crtc) +
		dev->driver->get_vblank_counter(dev, work->crtc_id);

	/* We borrow the event spin lock for protecting flip_work */
	FUNC20(&crtc->dev->event_lock, flags);

	if (radeon_crtc->flip_status != RADEON_FLIP_NONE) {
		FUNC2("flip queue: crtc already busy\n");
		FUNC21(&crtc->dev->event_lock, flags);
		r = -EBUSY;
		goto pflip_cleanup;
	}
	radeon_crtc->flip_status = RADEON_FLIP_PENDING;
	radeon_crtc->flip_work = work;

	/* update crtc fb */
	crtc->primary->fb = fb;

	FUNC21(&crtc->dev->event_lock, flags);

	FUNC14(radeon_crtc->flip_queue, &work->flip_work);
	return 0;

pflip_cleanup:
	if (FUNC24(FUNC17(new_rbo, false) != 0)) {
		FUNC3("failed to reserve new rbo in error path\n");
		goto cleanup;
	}
	if (FUNC24(FUNC18(new_rbo) != 0)) {
		FUNC3("failed to unpin new rbo in error path\n");
	}
	FUNC19(new_rbo);

cleanup:
	FUNC10(&work->old_rbo->tbo.base);
	FUNC6(work->fence);
	FUNC12(work);
	return r;
}