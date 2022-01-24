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
struct vop {int /*<<< orphan*/  vop_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  line_flag_completion; int /*<<< orphan*/  is_enabled; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vop* FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vop*) ; 
 int /*<<< orphan*/  FUNC7 (struct vop*) ; 
 scalar_t__ FUNC8 (struct vop*) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct drm_crtc *crtc, unsigned int mstimeout)
{
	struct vop *vop = FUNC5(crtc);
	unsigned long jiffies_left;
	int ret = 0;

	if (!crtc || !vop->is_enabled)
		return -ENODEV;

	FUNC2(&vop->vop_lock);
	if (mstimeout <= 0) {
		ret = -EINVAL;
		goto out;
	}

	if (FUNC8(vop)) {
		ret = -EBUSY;
		goto out;
	}

	FUNC4(&vop->line_flag_completion);
	FUNC7(vop);

	jiffies_left = FUNC9(&vop->line_flag_completion,
						   FUNC1(mstimeout));
	FUNC6(vop);

	if (jiffies_left == 0) {
		FUNC0(vop->dev, "Timeout waiting for IRQ\n");
		ret = -ETIMEDOUT;
		goto out;
	}

out:
	FUNC3(&vop->vop_lock);
	return ret;
}