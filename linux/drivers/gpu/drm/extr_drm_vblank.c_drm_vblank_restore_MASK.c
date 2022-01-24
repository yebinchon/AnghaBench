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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct drm_vblank_crtc {int framedur_ns; scalar_t__ last; int /*<<< orphan*/  time; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; int /*<<< orphan*/  vblank_time_lock; int /*<<< orphan*/  vbl_lock; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int DRM_TIMESTAMP_MAXRETRIES ; 
 int DRM_UT_VBL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int drm_debug ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,unsigned int,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC10(struct drm_device *dev, unsigned int pipe)
{
	ktime_t t_vblank;
	struct drm_vblank_crtc *vblank;
	int framedur_ns;
	u64 diff_ns;
	u32 cur_vblank, diff = 1;
	int count = DRM_TIMESTAMP_MAXRETRIES;

	if (FUNC2(pipe >= dev->num_crtcs))
		return;

	FUNC5(&dev->vbl_lock);
	FUNC5(&dev->vblank_time_lock);

	vblank = &dev->vblank[pipe];
	FUNC3((drm_debug & DRM_UT_VBL) && !vblank->framedur_ns,
		  "Cannot compute missed vblanks without frame duration\n");
	framedur_ns = vblank->framedur_ns;

	do {
		cur_vblank = FUNC4(dev, pipe);
		FUNC6(dev, pipe, &t_vblank, false);
	} while (cur_vblank != FUNC4(dev, pipe) && --count > 0);

	diff_ns = FUNC8(FUNC7(t_vblank, vblank->time));
	if (framedur_ns)
		diff = FUNC0(diff_ns, framedur_ns);


	FUNC1("missed %d vblanks in %lld ns, frame duration=%d ns, hw_diff=%d\n",
		      diff, diff_ns, framedur_ns, cur_vblank - vblank->last);
	FUNC9(dev, pipe, diff, t_vblank, cur_vblank);
}