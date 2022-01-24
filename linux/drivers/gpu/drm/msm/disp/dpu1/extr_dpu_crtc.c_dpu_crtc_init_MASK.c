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
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct drm_plane {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_3__ {int id; } ;
struct drm_crtc {TYPE_1__ base; struct drm_device* dev; } ;
struct dpu_kms {int dummy; } ;
struct dpu_crtc {int /*<<< orphan*/  name; int /*<<< orphan*/  event_lock; TYPE_2__* frame_events; int /*<<< orphan*/  frame_event_list; int /*<<< orphan*/  frame_done_comp; int /*<<< orphan*/  frame_pending; int /*<<< orphan*/  spin_lock; struct drm_crtc base; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DPU_CRTC_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_crtc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dpu_crtc_frame_event_work ; 
 int /*<<< orphan*/  dpu_crtc_funcs ; 
 int /*<<< orphan*/  dpu_crtc_helper_funcs ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dpu_crtc* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct dpu_kms* FUNC13 (int /*<<< orphan*/ ) ; 

struct drm_crtc *FUNC14(struct drm_device *dev, struct drm_plane *plane,
				struct drm_plane *cursor)
{
	struct drm_crtc *crtc = NULL;
	struct dpu_crtc *dpu_crtc = NULL;
	struct msm_drm_private *priv = NULL;
	struct dpu_kms *kms = NULL;
	int i;

	priv = dev->dev_private;
	kms = FUNC13(priv->kms);

	dpu_crtc = FUNC9(sizeof(*dpu_crtc), GFP_KERNEL);
	if (!dpu_crtc)
		return FUNC2(-ENOMEM);

	crtc = &dpu_crtc->base;
	crtc->dev = dev;

	FUNC12(&dpu_crtc->spin_lock);
	FUNC4(&dpu_crtc->frame_pending, 0);

	FUNC7(&dpu_crtc->frame_done_comp);

	FUNC3(&dpu_crtc->frame_event_list);

	for (i = 0; i < FUNC0(dpu_crtc->frame_events); i++) {
		FUNC3(&dpu_crtc->frame_events[i].list);
		FUNC10(&dpu_crtc->frame_events[i].list,
				&dpu_crtc->frame_event_list);
		FUNC8(&dpu_crtc->frame_events[i].work,
				dpu_crtc_frame_event_work);
	}

	FUNC6(dev, crtc, plane, cursor, &dpu_crtc_funcs,
				NULL);

	FUNC5(crtc, &dpu_crtc_helper_funcs);

	/* save user friendly CRTC name for later */
	FUNC11(dpu_crtc->name, DPU_CRTC_NAME_SIZE, "crtc%u", crtc->base.id);

	/* initialize event handling */
	FUNC12(&dpu_crtc->event_lock);

	FUNC1("%s: successfully initialized crtc\n", dpu_crtc->name);
	return crtc;
}