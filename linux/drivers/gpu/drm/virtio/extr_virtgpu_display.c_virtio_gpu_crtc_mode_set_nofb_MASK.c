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
struct virtio_gpu_output {int /*<<< orphan*/  index; } ;
struct virtio_gpu_device {int dummy; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct drm_crtc {TYPE_1__ mode; struct drm_device* dev; } ;

/* Variables and functions */
 struct virtio_gpu_output* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_gpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct virtio_gpu_device *vgdev = dev->dev_private;
	struct virtio_gpu_output *output = FUNC0(crtc);

	FUNC1(vgdev, output->index, 0,
				   crtc->mode.hdisplay,
				   crtc->mode.vdisplay, 0, 0);
}