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
struct vc4_hdmi {TYPE_1__* pdev; int /*<<< orphan*/  pixel_clock; } ;
struct vc4_dev {struct vc4_hdmi* hdmi; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VC4_HDMI_RAM_PACKET_CONFIG ; 
 int /*<<< orphan*/  VC4_HDMI_TX_PHY_RESET_CTL ; 
 int /*<<< orphan*/  VC4_HD_VID_CTL ; 
 int VC4_HD_VID_CTL_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC6 (struct drm_device*) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct vc4_dev *vc4 = FUNC6(dev);
	struct vc4_hdmi *hdmi = vc4->hdmi;
	int ret;

	FUNC1(VC4_HDMI_RAM_PACKET_CONFIG, 0);

	FUNC1(VC4_HDMI_TX_PHY_RESET_CTL, 0xf << 16);
	FUNC3(VC4_HD_VID_CTL,
		 FUNC2(VC4_HD_VID_CTL) & ~VC4_HD_VID_CTL_ENABLE);

	FUNC4(hdmi->pixel_clock);

	ret = FUNC5(&hdmi->pdev->dev);
	if (ret < 0)
		FUNC0("Failed to release power domain: %d\n", ret);
}