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
struct mdp4_kms {int dummy; } ;
struct mdp4_crtc {int flushed_mask; int /*<<< orphan*/  id; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__* vblank; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_MDP4_OVERLAY_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct drm_crtc*) ; 
 int FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 struct mdp4_kms* FUNC4 (struct drm_crtc*) ; 
 int FUNC5 (struct mdp4_kms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct mdp4_crtc* FUNC7 (struct drm_crtc*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct mdp4_crtc *mdp4_crtc = FUNC7(crtc);
	struct mdp4_kms *mdp4_kms = FUNC4(crtc);
	int ret;

	ret = FUNC2(crtc);
	if (ret)
		return;

	ret = FUNC8(dev->vblank[FUNC1(crtc)].queue,
		!(FUNC5(mdp4_kms, REG_MDP4_OVERLAY_FLUSH) &
			mdp4_crtc->flushed_mask),
		FUNC6(50));
	if (ret <= 0)
		FUNC0(dev->dev, "vblank time out, crtc=%d\n", mdp4_crtc->id);

	mdp4_crtc->flushed_mask = 0;

	FUNC3(crtc);
}