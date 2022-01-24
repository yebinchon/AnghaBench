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
struct TYPE_12__ {void* sequence; } ;
struct TYPE_8__ {int /*<<< orphan*/  signal; } ;
union drm_wait_vblank {TYPE_5__ reply; TYPE_1__ request; } ;
typedef  void* u64 ;
struct drm_vblank_crtc {int /*<<< orphan*/  enabled; } ;
struct TYPE_13__ {int /*<<< orphan*/  link; } ;
struct TYPE_14__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {scalar_t__ crtc_id; int /*<<< orphan*/  user_data; } ;
struct TYPE_11__ {TYPE_7__ base; TYPE_2__ vbl; } ;
struct drm_pending_vblank_event {unsigned int pipe; TYPE_6__ base; void* sequence; TYPE_4__ event; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  vblank_event_list; struct drm_vblank_crtc* vblank; } ;
struct TYPE_10__ {scalar_t__ id; } ;
struct drm_crtc {TYPE_3__ base; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,void*,unsigned int) ; 
 int /*<<< orphan*/  DRM_EVENT_VBLANK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_crtc* FUNC3 (struct drm_device*,unsigned int) ; 
 int FUNC4 (struct drm_device*,struct drm_file*,TYPE_6__*,TYPE_7__*) ; 
 void* FUNC5 (struct drm_device*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_pending_vblank_event*) ; 
 struct drm_pending_vblank_event* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,struct drm_pending_vblank_event*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_file*,unsigned int,void*) ; 
 scalar_t__ FUNC14 (void*,void*) ; 

__attribute__((used)) static int FUNC15(struct drm_device *dev, unsigned int pipe,
				  u64 req_seq,
				  union drm_wait_vblank *vblwait,
				  struct drm_file *file_priv)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
	struct drm_pending_vblank_event *e;
	ktime_t now;
	unsigned long flags;
	u64 seq;
	int ret;

	e = FUNC8(sizeof(*e), GFP_KERNEL);
	if (e == NULL) {
		ret = -ENOMEM;
		goto err_put;
	}

	e->pipe = pipe;
	e->event.base.type = DRM_EVENT_VBLANK;
	e->event.base.length = sizeof(e->event.vbl);
	e->event.vbl.user_data = vblwait->request.signal;
	e->event.vbl.crtc_id = 0;
	if (FUNC2(dev, DRIVER_MODESET)) {
		struct drm_crtc *crtc = FUNC3(dev, pipe);
		if (crtc)
			e->event.vbl.crtc_id = crtc->base.id;
	}

	FUNC11(&dev->event_lock, flags);

	/*
	 * drm_crtc_vblank_off() might have been called after we called
	 * drm_vblank_get(). drm_crtc_vblank_off() holds event_lock around the
	 * vblank disable, so no need for further locking.  The reference from
	 * drm_vblank_get() protects against vblank disable from another source.
	 */
	if (!FUNC1(vblank->enabled)) {
		ret = -EINVAL;
		goto err_unlock;
	}

	ret = FUNC4(dev, file_priv, &e->base,
					    &e->event.base);

	if (ret)
		goto err_unlock;

	seq = FUNC5(dev, pipe, &now);

	FUNC0("event on vblank count %llu, current %llu, crtc %u\n",
		  req_seq, seq, pipe);

	FUNC13(file_priv, pipe, req_seq);

	e->sequence = req_seq;
	if (FUNC14(seq, req_seq)) {
		FUNC6(dev, pipe);
		FUNC10(dev, e, seq, now);
		vblwait->reply.sequence = seq;
	} else {
		/* drm_handle_vblank_events will call drm_vblank_put */
		FUNC9(&e->base.link, &dev->vblank_event_list);
		vblwait->reply.sequence = req_seq;
	}

	FUNC12(&dev->event_lock, flags);

	return 0;

err_unlock:
	FUNC12(&dev->event_lock, flags);
	FUNC7(e);
err_put:
	FUNC6(dev, pipe);
	return ret;
}