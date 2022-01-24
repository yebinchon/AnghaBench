#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct dpu_crtc {int /*<<< orphan*/ * event; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dpu_crtc* FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc)
{
	struct dpu_crtc *dpu_crtc = FUNC5(crtc);
	struct drm_device *dev = crtc->dev;
	unsigned long flags;

	FUNC3(&dev->event_lock, flags);
	if (dpu_crtc->event) {
		FUNC1("%s: send event: %pK\n", dpu_crtc->name,
			      dpu_crtc->event);
		FUNC6(FUNC0(crtc));
		FUNC2(crtc, dpu_crtc->event);
		dpu_crtc->event = NULL;
	}
	FUNC4(&dev->event_lock, flags);
}