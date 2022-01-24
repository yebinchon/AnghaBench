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
struct shmob_drm_device {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct shmob_drm_crtc {int started; struct drm_crtc crtc; } ;
struct TYPE_2__ {struct shmob_drm_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDCNT1R ; 
 int /*<<< orphan*/  FUNC0 (struct shmob_drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct shmob_drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct shmob_drm_crtc*,int) ; 

__attribute__((used)) static void FUNC3(struct shmob_drm_crtc *scrtc)
{
	struct drm_crtc *crtc = &scrtc->crtc;
	struct shmob_drm_device *sdev = crtc->dev->dev_private;

	if (!scrtc->started)
		return;

	/* Stop the LCDC. */
	FUNC2(scrtc, false);

	/* Disable the display output. */
	FUNC0(sdev, LDCNT1R, 0);

	/* Stop clocks. */
	FUNC1(sdev);

	scrtc->started = false;
}