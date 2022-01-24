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
struct drm_vblank_crtc {int /*<<< orphan*/  enabled; } ;
struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ vblank_disable_immediate; struct drm_vblank_crtc* vblank; int /*<<< orphan*/  irq_enabled; } ;
struct drm_crtc_get_sequence {int /*<<< orphan*/  sequence_ns; int /*<<< orphan*/  sequence; int /*<<< orphan*/  active; int /*<<< orphan*/  crtc_id; } ;
struct drm_crtc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  enabled; TYPE_1__* state; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_crtc* FUNC3 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_crtc*) ; 
 int FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct drm_device *dev, void *data,
				struct drm_file *file_priv)
{
	struct drm_crtc *crtc;
	struct drm_vblank_crtc *vblank;
	int pipe;
	struct drm_crtc_get_sequence *get_seq = data;
	ktime_t now;
	bool vblank_enabled;
	int ret;

	if (!FUNC2(dev, DRIVER_MODESET))
		return -EOPNOTSUPP;

	if (!dev->irq_enabled)
		return -EINVAL;

	crtc = FUNC3(dev, file_priv, get_seq->crtc_id);
	if (!crtc)
		return -ENOENT;

	pipe = FUNC4(crtc);

	vblank = &dev->vblank[pipe];
	vblank_enabled = dev->vblank_disable_immediate && FUNC1(vblank->enabled);

	if (!vblank_enabled) {
		ret = FUNC5(crtc);
		if (ret) {
			FUNC0("crtc %d failed to acquire vblank counter, %d\n", pipe, ret);
			return ret;
		}
	}
	FUNC7(&crtc->mutex, NULL);
	if (crtc->state)
		get_seq->active = crtc->state->enable;
	else
		get_seq->active = crtc->enabled;
	FUNC8(&crtc->mutex);
	get_seq->sequence = FUNC9(dev, pipe, &now);
	get_seq->sequence_ns = FUNC10(now);
	if (!vblank_enabled)
		FUNC6(crtc);
	return 0;
}