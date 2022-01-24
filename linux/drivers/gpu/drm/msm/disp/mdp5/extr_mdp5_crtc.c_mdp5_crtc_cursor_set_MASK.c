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
typedef  void* uint32_t ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_kms {int /*<<< orphan*/  aspace; } ;
struct mdp5_pipeline {scalar_t__ r_mixer; } ;
struct TYPE_3__ {struct msm_kms base; } ;
struct mdp5_kms {TYPE_1__ base; struct platform_device* pdev; } ;
struct mdp5_ctl {int dummy; } ;
struct mdp5_crtc_state {struct mdp5_pipeline pipeline; struct mdp5_ctl* ctl; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; void* height; void* width; struct drm_gem_object* scanout_bo; scalar_t__ iova; } ;
struct mdp5_crtc {int /*<<< orphan*/  unref_cursor_work; TYPE_2__ cursor; int /*<<< orphan*/  lm_cursor_enabled; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {struct drm_device* dev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 void* CURSOR_HEIGHT ; 
 void* CURSOR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  PENDING_CURSOR ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC5 (struct drm_file*,void*) ; 
 struct mdp5_kms* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*) ; 
 int FUNC8 (struct mdp5_ctl*,struct mdp5_pipeline*,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct drm_gem_object*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp5_crtc* FUNC16 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct drm_crtc *crtc,
		struct drm_file *file, uint32_t handle,
		uint32_t width, uint32_t height)
{
	struct mdp5_crtc *mdp5_crtc = FUNC16(crtc);
	struct mdp5_crtc_state *mdp5_cstate = FUNC17(crtc->state);
	struct mdp5_pipeline *pipeline = &mdp5_cstate->pipeline;
	struct drm_device *dev = crtc->dev;
	struct mdp5_kms *mdp5_kms = FUNC6(crtc);
	struct platform_device *pdev = mdp5_kms->pdev;
	struct msm_kms *kms = &mdp5_kms->base.base;
	struct drm_gem_object *cursor_bo, *old_bo = NULL;
	struct mdp5_ctl *ctl;
	int ret;
	uint32_t flush_mask = FUNC9(0);
	bool cursor_enable = true;
	unsigned long flags;

	if (!mdp5_crtc->lm_cursor_enabled) {
		FUNC3(dev->dev,
			 "cursor_set is deprecated with cursor planes\n");
		return -EINVAL;
	}

	if ((width > CURSOR_WIDTH) || (height > CURSOR_HEIGHT)) {
		FUNC1(dev->dev, "bad cursor size: %dx%d\n", width, height);
		return -EINVAL;
	}

	ctl = mdp5_cstate->ctl;
	if (!ctl)
		return -EINVAL;

	/* don't support LM cursors when we we have source split enabled */
	if (mdp5_cstate->pipeline.r_mixer)
		return -EINVAL;

	if (!handle) {
		FUNC0("Cursor off");
		cursor_enable = false;
		mdp5_crtc->cursor.iova = 0;
		FUNC11(&pdev->dev);
		goto set_cursor;
	}

	cursor_bo = FUNC5(file, handle);
	if (!cursor_bo)
		return -ENOENT;

	ret = FUNC10(cursor_bo, kms->aspace,
			&mdp5_crtc->cursor.iova);
	if (ret)
		return -EINVAL;

	FUNC11(&pdev->dev);

	FUNC14(&mdp5_crtc->cursor.lock, flags);
	old_bo = mdp5_crtc->cursor.scanout_bo;

	mdp5_crtc->cursor.scanout_bo = cursor_bo;
	mdp5_crtc->cursor.width = width;
	mdp5_crtc->cursor.height = height;

	FUNC7(crtc);

	FUNC15(&mdp5_crtc->cursor.lock, flags);

set_cursor:
	ret = FUNC8(ctl, pipeline, 0, cursor_enable);
	if (ret) {
		FUNC1(dev->dev, "failed to %sable cursor: %d\n",
				cursor_enable ? "en" : "dis", ret);
		goto end;
	}

	FUNC2(crtc, flush_mask);

end:
	FUNC12(&pdev->dev);
	if (old_bo) {
		FUNC4(&mdp5_crtc->unref_cursor_work, old_bo);
		/* enable vblank to complete cursor work: */
		FUNC13(crtc, PENDING_CURSOR);
	}
	return ret;
}