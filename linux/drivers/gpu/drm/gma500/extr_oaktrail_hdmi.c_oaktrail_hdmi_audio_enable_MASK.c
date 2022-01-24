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
struct oaktrail_hdmi_dev {int dummy; } ;
struct drm_psb_private {struct oaktrail_hdmi_dev* hdmi_priv; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int HDMI_AUDIO_CTRL ; 
 int HDMI_HCR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct oaktrail_hdmi_dev *hdmi_dev = dev_priv->hdmi_priv;

	FUNC1(HDMI_HCR, 0x67);
	FUNC0(HDMI_HCR);

	FUNC1(0x51a8, 0x10);
	FUNC0(0x51a8);

	FUNC1(HDMI_AUDIO_CTRL, 0x1);
	FUNC0(HDMI_AUDIO_CTRL);
}