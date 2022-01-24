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
struct vc4_hdmi {TYPE_1__* pdev; struct drm_encoder* encoder; } ;
struct vc4_dev {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC4_HD_MAI_CTL ; 
 int /*<<< orphan*/  VC4_HD_MAI_CTL_ERRORF ; 
 int /*<<< orphan*/  VC4_HD_MAI_CTL_FLUSH ; 
 int /*<<< orphan*/  VC4_HD_MAI_CTL_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct vc4_dev* FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_encoder*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vc4_hdmi *hdmi)
{
	struct drm_encoder *encoder = hdmi->encoder;
	struct drm_device *drm = encoder->dev;
	struct device *dev = &hdmi->pdev->dev;
	struct vc4_dev *vc4 = FUNC2(drm);
	int ret;

	ret = FUNC3(encoder, HDMI_INFOFRAME_TYPE_AUDIO);
	if (ret)
		FUNC1(dev, "Failed to stop audio infoframe: %d\n", ret);

	FUNC0(VC4_HD_MAI_CTL, VC4_HD_MAI_CTL_RESET);
	FUNC0(VC4_HD_MAI_CTL, VC4_HD_MAI_CTL_ERRORF);
	FUNC0(VC4_HD_MAI_CTL, VC4_HD_MAI_CTL_FLUSH);
}