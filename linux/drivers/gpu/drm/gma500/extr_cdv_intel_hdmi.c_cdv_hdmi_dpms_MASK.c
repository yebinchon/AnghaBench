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
typedef  int u32 ;
struct mid_intel_hdmi_priv {int /*<<< orphan*/  hdmi_reg; } ;
struct gma_encoder {struct mid_intel_hdmi_priv* dev_priv; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DRM_MODE_DPMS_ON ; 
 int HDMIB_PORT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct gma_encoder* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct gma_encoder *gma_encoder = FUNC2(encoder);
	struct mid_intel_hdmi_priv *hdmi_priv = gma_encoder->dev_priv;
	u32 hdmib;

	hdmib = FUNC0(hdmi_priv->hdmi_reg);

	if (mode != DRM_MODE_DPMS_ON)
		FUNC1(hdmi_priv->hdmi_reg, hdmib & ~HDMIB_PORT_EN);
	else
		FUNC1(hdmi_priv->hdmi_reg, hdmib | HDMIB_PORT_EN);
	FUNC0(hdmi_priv->hdmi_reg);
}