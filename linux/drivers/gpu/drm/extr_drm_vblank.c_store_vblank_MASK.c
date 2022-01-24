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
typedef  scalar_t__ u32 ;
struct drm_vblank_crtc {int /*<<< orphan*/  seqlock; int /*<<< orphan*/  count; int /*<<< orphan*/  time; scalar_t__ last; } ;
struct drm_device {int /*<<< orphan*/  vblank_time_lock; struct drm_vblank_crtc* vblank; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev, unsigned int pipe,
			 u32 vblank_count_inc,
			 ktime_t t_vblank, u32 last)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

	FUNC0(&dev->vblank_time_lock);

	vblank->last = last;

	FUNC1(&vblank->seqlock);
	vblank->time = t_vblank;
	vblank->count += vblank_count_inc;
	FUNC2(&vblank->seqlock);
}