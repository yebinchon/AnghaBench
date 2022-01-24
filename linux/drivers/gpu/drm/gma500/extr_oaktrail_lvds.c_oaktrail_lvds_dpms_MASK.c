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
struct gma_encoder {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct gma_encoder*,int) ; 
 struct gma_encoder* FUNC1 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC2(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct gma_encoder *gma_encoder = FUNC1(encoder);

	if (mode == DRM_MODE_DPMS_ON)
		FUNC0(dev, gma_encoder, true);
	else
		FUNC0(dev, gma_encoder, false);

	/* XXX: We never power down the LVDS pairs. */
}