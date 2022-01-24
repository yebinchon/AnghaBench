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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_1__ base; } ;
struct sti_mixer {struct drm_crtc drm_crtc; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sti_crtc_funcs ; 
 int /*<<< orphan*/  sti_crtc_helper_funcs ; 
 int /*<<< orphan*/  FUNC4 (struct sti_mixer*) ; 

int FUNC5(struct drm_device *drm_dev, struct sti_mixer *mixer,
		  struct drm_plane *primary, struct drm_plane *cursor)
{
	struct drm_crtc *crtc = &mixer->drm_crtc;
	int res;

	res = FUNC3(drm_dev, crtc, primary, cursor,
					&sti_crtc_funcs, NULL);
	if (res) {
		FUNC1("Can't initialize CRTC\n");
		return -EINVAL;
	}

	FUNC2(crtc, &sti_crtc_helper_funcs);

	FUNC0("drm CRTC:%d mapped to %s\n",
			 crtc->base.id, FUNC4(mixer));

	return 0;
}