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
struct drm_encoder {int /*<<< orphan*/  crtc; } ;
struct zx_hdmi {struct drm_encoder encoder; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOU_HDMI_AUD_SPDIF ; 
 struct zx_hdmi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	struct zx_hdmi *hdmi = FUNC0(dev);
	struct drm_encoder *encoder = &hdmi->encoder;

	FUNC1(encoder->crtc, VOU_HDMI_AUD_SPDIF);

	return 0;
}