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
struct drm_vblank_crtc {int /*<<< orphan*/  time; int /*<<< orphan*/  count; int /*<<< orphan*/  seqlock; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static u64 FUNC3(struct drm_device *dev, unsigned int pipe,
				     ktime_t *vblanktime)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
	u64 vblank_count;
	unsigned int seq;

	if (FUNC0(pipe >= dev->num_crtcs)) {
		*vblanktime = 0;
		return 0;
	}

	do {
		seq = FUNC1(&vblank->seqlock);
		vblank_count = vblank->count;
		*vblanktime = vblank->time;
	} while (FUNC2(&vblank->seqlock, seq));

	return vblank_count;
}