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
struct vkms_output {int composer_enabled; int /*<<< orphan*/  lock; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct vkms_output* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int*) ; 

int FUNC4(struct drm_crtc *crtc, const char *src_name)
{
	struct vkms_output *out = FUNC0(crtc);
	bool enabled = false;
	int ret = 0;

	ret = FUNC3(src_name, &enabled);

	FUNC1(&out->lock);
	out->composer_enabled = enabled;
	FUNC2(&out->lock);

	return ret;
}