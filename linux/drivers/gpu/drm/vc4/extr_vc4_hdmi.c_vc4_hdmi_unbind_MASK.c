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
struct vc4_hdmi {TYPE_1__* ddc; int /*<<< orphan*/  hsm_clock; int /*<<< orphan*/  encoder; int /*<<< orphan*/  connector; int /*<<< orphan*/  cec_adap; } ;
struct vc4_dev {struct vc4_hdmi* hdmi; } ;
struct drm_device {struct vc4_dev* dev_private; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev, struct device *master,
			    void *data)
{
	struct drm_device *drm = FUNC2(master);
	struct vc4_dev *vc4 = drm->dev_private;
	struct vc4_hdmi *hdmi = vc4->hdmi;

	FUNC0(hdmi->cec_adap);
	FUNC5(hdmi->connector);
	FUNC6(hdmi->encoder);

	FUNC1(hdmi->hsm_clock);
	FUNC3(dev);

	FUNC4(&hdmi->ddc->dev);

	vc4->hdmi = NULL;
}