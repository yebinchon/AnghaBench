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
typedef  int /*<<< orphan*/  u32 ;
struct msm_drm_private {unsigned int num_crtcs; struct drm_crtc** crtcs; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct drm_encoder* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 

__attribute__((used)) static u32 FUNC2(struct drm_device *dev, unsigned int pipe)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct drm_crtc *crtc;
	struct drm_encoder *encoder;

	if (pipe >= priv->num_crtcs)
		return 0;

	crtc = priv->crtcs[pipe];
	if (!crtc)
		return 0;

	encoder = FUNC0(crtc);
	if (!encoder)
		return 0;

	return FUNC1(encoder);
}