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
struct drm_bridge {int /*<<< orphan*/ * funcs; } ;
struct hdmi_bridge {struct drm_bridge base; struct hdmi* hdmi; } ;
struct hdmi {int /*<<< orphan*/  encoder; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_bridge* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hdmi_bridge* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_bridge*) ; 
 int /*<<< orphan*/  msm_hdmi_bridge_funcs ; 

struct drm_bridge *FUNC4(struct hdmi *hdmi)
{
	struct drm_bridge *bridge = NULL;
	struct hdmi_bridge *hdmi_bridge;
	int ret;

	hdmi_bridge = FUNC1(hdmi->dev->dev,
			sizeof(*hdmi_bridge), GFP_KERNEL);
	if (!hdmi_bridge) {
		ret = -ENOMEM;
		goto fail;
	}

	hdmi_bridge->hdmi = hdmi;

	bridge = &hdmi_bridge->base;
	bridge->funcs = &msm_hdmi_bridge_funcs;

	ret = FUNC2(hdmi->encoder, bridge, NULL);
	if (ret)
		goto fail;

	return bridge;

fail:
	if (bridge)
		FUNC3(bridge);

	return FUNC0(ret);
}