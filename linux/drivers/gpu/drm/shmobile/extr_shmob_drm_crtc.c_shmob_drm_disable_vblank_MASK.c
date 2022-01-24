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
struct TYPE_2__ {struct shmob_drm_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct shmob_drm_device*,int) ; 

__attribute__((used)) static void FUNC1(struct drm_crtc *crtc)
{
	struct shmob_drm_device *sdev = crtc->dev->dev_private;

	FUNC0(sdev, false);
}